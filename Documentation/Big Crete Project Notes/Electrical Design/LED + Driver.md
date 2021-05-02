# LED and Driver
[[Motherboard]]

## LED Array Information
Switch LEDs
https://www.adafruit.com/product/2739
 Common anode (grounds tied together)
 ![[p2739.pdf]]
 20mA forward current
 100mA at 1/10 duty
 21 - 27 keys 
 this is 27 x 3 leds = 81 leds
 at full tilt this would be 81 x 0.02A = 1.62A JEEZ
 
5x6 (5 wide 6 tall)
with RGB in the rows not columns this becomes 15x6

## Driver Circuitry

### Requirements
- Must be able to adjust LED brightness on each RGB channel for the LEDs
- Must be able to drive each LED to a maximum current of 

### LTSpice
NOTE this needs to be redone 
![[Pasted image 20210311220234.png]]

Willson current mirror paired with two transistors for charlieplexing
Decoders would be used to select NPN BJTs to select the diode getting power

Components


3-8 decoder
LCSC P/N C5602
SOIC-16
Datasheet
![[Nexperia-74HC138D-653_C5602.pdf]]

PNP BJT
LCSC P/N C444726
SOT-23
Datasheet
![[1912111437_Slkor-SLKORMICRO-Elec-SS8550_C444726.pdf]]