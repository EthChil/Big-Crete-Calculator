# Major issues

## Electrical
- [ ] power switch was completely forgotten from design (use a connector pull with a strap) (selected a 2 pin LEMO which is a push pull connector and looks pretty dope) https://www.lemo.com/catalog/ROW/UK_English/unipole_multipole.pdf
	- [ ] Integrate into enclosure
	- [x] order (EGG.00.302) (FGG.00.302.CLAD35)
- [x] SMD LEDs are needed for kalih box whites (https://www.digikey.ca/en/products/detail/harvatek-corporation/T36K3BGR-05D000121U1930/13588739)
- [x] the main board had the cells in series not parallel this has been patched with a wire
- [x] soldering the board together could be replaced with a cutout and through hole mountable female header (https://www.digikey.ca/en/products/detail/harwin-inc/M20-7811045/6564951) or for 30 pos (https://www.digikey.ca/en/products/detail/harwin-inc/M20-7811545/6564953)


## Mechanical
- [ ] a capacitor on the display interferes with the switch board this was desoldered (just a bulking)
	- [x] ignoring this for now just take the cap off
- [ ] trimmer pot hits the usbc breakout on alchitry
	- [x] switch to SMD and push them into a group
	- [x] make a cutout on the motherboard so the pots can be accessed
	- [x] add screws to attach the display to the switchplate
	- [x] add through hold headers so it can be taken apart
	- [ ] add cutouts to access trimmers 
- [ ] mounting pins on display aren't aligned through all the layers seems to be a switch board issue but unclear
- [ ] switch plate interferes with stabilizers. looks like the fillets are causing issues. I think generally increasing the clearance for these parts makes sense for a future revision. I had to file the fillets into squared off corners to fix it
- [ ] captive nuts don't go into any of the holes and the holes themselves are tight enough to thread the brass into the plastic of the interposer
- [x] forgot to mount the termination resistors for the USB and also forgot to put the screws in before mating the boards now this isn't possible
- [ ] proper enclosures for the batteries
- [ ] add more mounts for the motherboard so it is nicely constrained
- [x] display sticks out a fair bit (unsure if this can be patched)
	- take the sticky out bits off the key switch board and pass all the signals through to the motherboard (so remove all the multiplexer stuff)
	- leave the FETs on the switch board that drive the LEDs 
	- Run the rest of the signals raw to the FPGA and handle multiplexing inside the FPGA
	- Then the display can be set further into the device and clear plastic or glass can be placed ontop
	- I think lasercut an acrylic window and etch the edges
	- have some 3d print that comes out which the window glues to
	- the display connects to the motherboard directly instead of passing through the switchboard then going to the motherboard
	- use the pass through headers for it
	- datum it to the 3D print which aligns it with the acrylic cover on top


Small notes
to actually stack the boards if the mainboard is lengthened and circuitry pulled from the switchboard onto the mainboard then the display could come down 

Minor Qualms
- [ ] sealing for the brass after polishing
- [ ] remove the rear puck 
- [ ] on bank A there are 2 pins missing a NC DRC tag



Fam Tree

Ethan
Phil Childerhose
Beverley Childerhose
Carson Childerhose (adelaide)
James (Marry) Hastings West (wiclow Bangor)
