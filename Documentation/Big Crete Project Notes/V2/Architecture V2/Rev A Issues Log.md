Major issues
- power switch was completely forgotten from design
- SMD LEDs are needed for kalih box whites
- the main board had the cells in series not parallel this has been patched with a wire
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
- on bank A there are 2 pins missing a NC DRC tag