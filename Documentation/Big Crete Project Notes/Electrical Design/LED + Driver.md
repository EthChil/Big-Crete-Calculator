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
 

## Driver Circuitry

### Requirements
- Must be able to adjust LED brightness on each RGB channel for the LEDs
- Must be able to drive each LED to a maximum current of 