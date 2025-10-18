# voron 0.2

Klipper configuration backups.

## Description

Backups for Voron Design VORON 0.2 with 120mm Bed, SKR Pico mmu, Mellow Fly SHT-36 v2/UTOC & Pi 4 2GB. 

1. Mini Fridge door
2. Tulip 2.0 Gantry (https://github.com/Amekyras/tulip)
4. Yavoth Extruder  (https://github.com/chirpy2605/voron/tree/main/V0/Yavoth)
5. Dragon Ace HE, Orbiter 2.0
6. Stealth Skirts & wide feet
7. Siboor, steel Kirigami bed
8. BTT PITFT43 screen
9. Split Z-cover remix (https://www.printables.com/model/1356175-voron-02-z-motor-cover-plate-remix-360-cover)

<img width="600" height="870" alt="voron02" src="https://github.com/user-attachments/assets/771a66b5-65c0-43b8-a071-cab2198ce950" />



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
|FAN0|Hotend Fan|SHT:FAN0
|FAN1|Part Fan|SHT:FAN1

