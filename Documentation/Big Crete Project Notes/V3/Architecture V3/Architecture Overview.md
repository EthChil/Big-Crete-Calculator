**Requirements
- Must contain display, full colour LCD
- Must contain FPGA
- Must be battery powered
- Chassis must contain metal
- Key switches are RGB mechanical switches
- Program and charge over USB-C
- able to manage batteries
- can charge and operate while charging


**Scope Creep Items
- Swappable boot (either desolder SPI chip or include MCU that can reflash it or some other system)
- Audio jack for playing with noize
- Speakers for playing with noize?
- camera module for taking photos
- wireless charging
- USB PD for charging


**Sub Logs**
[[Battery Circuit]] contains info on BMS and protection for battery this is on the primary PCB

### Blocking Rev A ordering
- Validate that RGB LEDs can be used on switches
- validate that switches can be read 
- Display is working maybe validate that colour and stuff works as well
- 

### Major Changes from Rev A
- Adding a power switch with related circuitry in (motherboard)
- swap to SMD LEDs so that kalih box whites can be used
- modify the mounting between the motherboard and the switch board such that it can be easily disassembled (no longer a soldered connection) this will allow the switchboard to be modified separate from the motherboard
- put the cells in series not in parallel
- Swap from the alchitry to the A200T mounted on a sodimm slot
	- inclusion of DDR3 SODIMM on the A200T board
	- FTDI chip included on motherboard to handle USB -> SPI flash
	- mount the SPI flash directly to the motherboard for now (make it swappable in a future revision)
	- power delivery circuit for the FPGA should exist on the FPGA card not on the motherboard
	- cells will likely need to be put into series or I just bite the bullet and put a boost convertor (leaning this way lol)
	- 

- a capacitor on the display interferes with the switch board this was desoldered (just a bulking)
- trimmer pot hits the usbc breakout on alchitry
- mounting pins on display aren't aligned through all the layers seems to be a switch board issue but unclear
- switch plate interferes with stabilizers. looks like the fillets are causing issues. I think generally increasing the clearance for these parts makes sense for a future revision. I had to file the fillets into squared off corners to fix it
- captive nuts don't go into any of the holes and the holes themselves are tight enough to thread the brass into the plastic of the interposer
- forgot to mount the termination resistors for the USB and also forgot to put the screws in before mating the boards now this isn't possible
- soldering the board together could be replaced with a cutout and through hold mountable female header

Minor Qualms
- display sticks out a fair bit (unsure if this can be patched)
- more space than expected to the display electronics 
- how exactly does the puck on the back attach?
- power switch location needs to be determined
