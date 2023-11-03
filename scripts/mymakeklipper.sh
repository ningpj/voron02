#!/bin/bash

# exit on any error
set -e

# Targets
kexpand=0
mcu=0
rp=0
flash=0

for ARG in $@; do
   case $ARG in
     "--mcu")
       mcu=1
     ;;
     "--rp")
       rp=1
     ;;
     "--expander")
       kexpand=1
     ;;
     "--all")
       rp=1
       mcu=1
     ;;
     "--flash")
       flash=1
     ;;
     *)
       echo "$0 Error. Invalid argument [$ARG]. Options include --all, --mcu, --rp, --expander, --flash"
       exit 9
     ;;
   esac
done

if [ $mcu = 0 ] && [ $rp = 0 ] && [ $kexpand = 0 ]; then
  echo Nothing to do, exiting.
  exit 0
fi

rp_mcu=~/printer_data/config/scripts/config.rp_mcu
pico_mcu=~/printer_data/config/scripts/config.pico.mcu
usb_mcu=/dev/serial/by-id/usb-Klipper_rp2040_4550357128949C28-if00
kexpand_mcu=/dev/serial/by-id/usb-Klipper_stm32f042x6_0D0004800C43303054313620-if00

if [ $flash = 1 ]; then
  read -p "*** WARNING *** MCU's will be updated and flashed!!! - Press [Enter] to continue, Ctrl-C to abort"
  echo Stopping Klipper ...
  sudo service klipper stop
else
  read -p "NOTE - MCU's will NOT be updated and flashed - Press [Enter] to continue, Ctrl-C to abort"
fi

cd ~/klipper

if [ $rp = 1 ]; then
 
  echo "Compiling Klipper for RP MCU [Input Shaper]"

  echo Using make override [${rp_mcu}]
  make clean KCONFIG_CONFIG=${rp_mcu}
  make menuconfig KCONFIG_CONFIG=${rp_mcu}
  make KCONFIG_CONFIG=${rp_mcu}
  read -p "Review errors and press [Enter] to continue, Ctrl-C to abort"

  if [ $flash = 1 ]; then
    echo "Flashing Klipper to RP MCU [Input Shaper]"
    make flash KCONFIG_CONFIG=${rp_mcu}
    read -p "RP MCU [Input Shaper] updated. Press [Enter] to continue or Ctrl-C to abort"
  else
    echo --flash not specified, flash step bypassed.
  fi
  echo 
fi

if [ $mcu = 1 ]; then
  echo "Compiling Klipper for BTT SKR Pico MCU"

  echo Using make override [${pico_mcu}] to flash ${usb_mcu}
  make clean KCONFIG_CONFIG=${pico_mcu}
  make menuconfig KCONFIG_CONFIG=${pico_mcu}
  make KCONFIG_CONFIG=${pico_mcu}

  if [ $flash = 1 ]; then
    read -p "Review errors and press [Enter] to continue or Ctrl-C to abort"
    echo "Flashing Klipper for Pico MCU"
    make flash KCONFIG_CONFIG=${pico_mcu} FLASH_DEVICE=${usb_mcu} 
    read -p "Pico MCU updated. Press [Enter] to continue or Ctrl-C to abort"
  else
    echo --flash not specified, flash step bypassed.
  fi
  echo 
fi

if [ $flash = 1 ]; then
  echo Starting Klipper ...
  sudo service klipper start 
fi
