# voron 0.2

Klipper configuration backups.

## Description

Backups for Voron Design VORON 0.2 with 120mm Bed, SKR Pico mmu, Mellow Fly SHT-36 v2/UTOC & Pi 4 2GB. 

<img width="600" height="811" alt="voron02" src="https://github.com/user-attachments/assets/0eb7f592-bd49-4b64-bbb7-7e9b791fef5d" />

## SKR Pico v1.0 PIN Assignments

|**Component**|**Description**|**PIN**
|-|-|-
|HB|Bed|GPIO21
|FAN1|Chamber COB LEDs|GPIO17
|FAN2|Controller Fan|GPIO18 - daisy chained
|FAN2|Stealth Skirt Fans|GPIO18 - daisy chained
|FAN3|Nevermore v4 Micro|GPIO20
|THB|Bed Thermistor|GPIO26
|TH0|Chamber Thermistor|GPIO27
|Z-STOP|Z Endstop|GPIO25
|RGB|Neopixels|GPIO24

## Mellow SHT-36v2 PIN Assignments
|**Component**|**Description**|**PIN**
|-|-|-
|HE0|Hotend Heater|SHT:HE0
|TH0|Hotend Sensor|SHT:TH0
|FAN1|Part Fan|SHT:FAN1
|FAN2|Hotend Fan|SHT:FAN0
