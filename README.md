# voron 0.2

Klipper configuration backups.

## Description

Backups for Voron Design VORON 0.2 with 120mm Bed, SKR Pico mmu, Mellow Fly SHT-36 v2/UTOC & Pi 4 2GB. 
1. Mini Fridge door
2. Tulip Gantry
3. Yavoth Extruder, Dragon Ace HE, Orbiter 2.0 Extruder
4. Stealth Skirts & wide feet

<img width="600" height="862" alt="woron02" src="https://github.com/user-attachments/assets/227d72b1-955b-42cb-bf9b-ec28c9ea6552" />


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

