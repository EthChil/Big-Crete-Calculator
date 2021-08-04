April 29th, 2021
- Doing design work before I start at NVIDIA
- Current status
	- SPD breakout board designed and arrived I know the pinout is for DDR3 and not DDR3L which may affect the ability for it to be used
	- LCD Display breakout is finished being designed just needs to be ordered
	- LED Breakout is not designed schematic or layout
	- Power is not designed schematic or layout

- By the end of today I want to have the LED breakout designed and laid out
- If possible I'd also like to start working on the power circuitry
- I may get cut short since I have a new computer arriving and I may get caught up setting that up

May 2nd, 2021
- I got caught up setting up my new workspace and computer
- None of the items from the previous logs were done at all and remain outstanding
- For today I plan to complete the schematic for the LED breakout using the LTSpice simulations I did from HOLO as a reference since that seemed to work fairly well

May 3rd, 2021
- Today was my first day at NVIDIA 
- Yesterday I looked at the ltspice sims for the LED driver circuitry
- Today I plan on taking a look at the breadboard I made for that and modifying the circuit and doing additional analysis
- I'll attach the math for that analysis here

May 5th, 2021
- So I continue to be pushed off what I'm doing hopefully today will be different
- So looking at all the things I said I would do here is the task for today 
- First I will go through on my iPad and generate a schematic for the driver circuitry that I agree with showing math
- I generated some designs on my iPad then shifted to producing footprints and selecting components, at the moment I still need to finish the footprint for the gateron switches

May 9th, 2021
- so today the goal is to finish the footprints the schematic then layout the LED Driver board which will also have key switch stuff
- If I have time I also want to fix the SPD breakout and reorder it
- So update I was able to finish the schematic layout and made a top level with the connections for the breakout, next step is to route all of it likely tomorrow? I should have time then

	just as a note below is the plan
	- SPD breakout (needs stencil)
	- Display breakout no stencil (maybe for the connector)
	- LED Driver no stencil (assembly tho)

May 10th, 2021
- today I discovered that I've been structuring my altium stuff all wrong so I'm currently restructuring it
- additionally I appear to have lost the schematic for the display driver breakout, kinda akward (looks like it was in my downloads on my other computer, i'll retrieve it later)

May 11th
- I pulled the schematic for the LCD off my previous computer now I guess it's time to restructure the files properly
- Files have been restructured and I properly laid out the display driver and found some issues with the schematic along the way

May 12th
- only thing outstanding from the layout was fixing up the silkscreen that is now down and the board is ready to be ordered

	Current tasks 
	- rewire SPD breakout
	- prepare gerber for SPD breakout
	- prepare gerber for LED Driver
	- prepare required placement files for LED Driver
	Boards for Breakout Version
	- SPD Breakout (not part of calculator needed for programming)
	- LED and Switch breakout
	- LCD Breakout
	- Power Breakout (includes BMS circuitry)
	- Wireless Charging Breakout
	- Configuration card breakout

May 17th
- Fixed issue with the keys being incorrectly laid out on the bottom row
- as a note the issue with the SPD was that I wired it for ECC DDR3L this mistake was not made on the A200T ram

May 23rd
- I think I forgot to note it in this journal but the SPD breakout was rewired for DDR3L without ECC however I recall some form of issue with the nets not mapping properly to the pcb
- yea so the issue is that Vtt, Vss, Vrefdq, Vdd aren't mapping onto the pcb
- just required an import the issue is gone must've been a small bug

	Current tasks 
	- Layout SPD Breakout
	- prepare gerber for SPD breakout
	- prepare gerber for LED Driver
	- prepare required placement files for LED Driver
	- finish schematic for FPGA board
	Boards for Breakout Version
	- SPD Breakout (not part of calculator needed for programming) (SCHEMATIC DONE)
	- LED and Switch breakout (LAID OUT)
	- LCD Breakout (LAID OUT)
	- Power Breakout (includes BMS circuitry)
	- Wireless Charging Breakout
	- Configuration card breakout
	- FPGA board

May 31st
- Task for today is to finish the SPD breakout layout
- clean up the fpga board and highlight what power lines are needed (note this in obsidian for the power board)
- start designing the power board
- SPD breakout has been laid out it now just needs gerbers generated and it's good for manufacture

June 1st
- With the SPD board done the next task is to look over the FPGA board and highlight the power lines that will be fed from the power board

June 4th
- broke out the lines and created a new power subcircuit document
- Developed plan for how the rails will be powered and current allowances
- I also pulled the regulation tolerance data from the datasheets for the components
- I was going to start looking at components on digikey but the websites filters are having issues
- contacted jlc and determined speedgrade is -2 and the unit is industrial meaning the voltage is 1V

June 6th 
- Started selecting power ICs and testing them out in ltspice
- Running into issues with Digikey (started friday night)

June 18th
- Started schematic layout for power board
- Splitting bms into seperate board
- adding USB-C power in addition to wireless power (wireless will be fully custom)
- Adding current and voltage monitoring to power board (mostly for initial debug and bringup)
- Issue with schematic right now is I'm not exactly using the correct components, I need to get the online library I had reinstalled that was dope

June 19th
- noticed in LTSpice that some lower voltages cause regulation to drop out on the 5v rail this probably can be fixed by using a smaller inductor, for now UVLO circuitry will be added so the rails dropout at anything below 7V into the regulator (3.5V cell voltage)

June 25th 
- Deadline for boards to get ordered is this sunday (27th)
- split up the power boards, at the least I want the power subcircuit board done, followed by bms, then monitoring board

Boards for Order (BRIAN)
READY: Ram breakout (SPD)
READY: LCD Display Breakout
IN-PROGRESS: Power subcircuit (Buck + Linear Reg)
IN-PROGRESS: Voltage / current breakout (monitoring for 9 rails per [[Power Subcircuit]])
IN-PROGRESS: BMS subcircuit (USB-C plug, charging IC, passthrough from battery / USB-C)

Boards for Order (ETHAN)
LED + Driver
FPGA Board (IN PROGRESS)

Other:
Wireless charging, (likely for post prototype)

June 26th
- Starting to go through these items first up is power subcircuit 
- Power subcircuit schematic appears to be done, I also had to minorly rearchitect for power up sequence and also because my rails were too close to the buck ones for LDOs to work properly 
- Now working on layout
- Got about halfway through layout

June 27th
- Finished layout
- One issue with VIN is that I didn't leave enough room to route big enough traces
- as it stands it WILL work but I want to solder patch wires from the caps on the left and right inductors so just make sure you do that before assembly 
- I also put in mounting holes spaced 1.5" apart and sized for a #4 fastener 

Boards going out for order today
READY: Ram breakout (SPD)
READY: LCD Display Breakout
READY: Power subcircuit (Buck + Linear Reg)
READY: LED + Driver


July 8th
Got boards in
Assembled SPD board, reflow seemed to work out fine I had to touch it up with the iron a bit

switch board
- switches are a bit tight going in this should be investigated for V2
- enter and plus key collide, check spacing I think the plus key is too low the enter looks fine
- Stabilizers were missed on this design make sure that's in V2

RAM Notes
- couldn't find info for Trefi and Tcke timings so 4us is being used for Trefi and 5ns for Tcke

- When redoing the vivado stuff noticed an issue with obsidian linking of RAM connections but there was also an error in altium so double check vivado/atlium/obsidian and make sure they all agree

- Updtaed vivado to meet -2 timing requirments on FPGA and fixed some timing issues with the ram

Notes for next time:
- Focus on getting FPGA board ordered (Schematic then layout)
- Verify ram connections are correct (vivado/atlium/obsidian)
- Get FPGA boards ordered asap maybe order a run of 1 for now then if design verified order another each is like probably ~$200 CAD


July 9th
- Having issues sourcing the FPGA I need, JLC doesn't have it and all A200T FPGAs are out of stock literally everywhere
- For now I will work under the assumption that I am getting the FPGA I've been designing for, hopefully this will reduce the risk of mistakes in the design
- For today I will work on routing the FPGA and doing all the schematic related things for it

July 10th
- Got stuck in a rabit hole looking at pinout info for the chip which sorta exists not really tho
- Validate ram pinout is top priority 
- Then deal with all the config pins and what they are and what they should be tied to
- Determine what other pins are required for what (SPI BOOT, JTAG, SPI Storage, External Interfaces)

July 12th
- Ordered FPGA from mouser P/N XC7A200T-1SBG484C
- Vivado was rebuilt for the new part but is giving some warnings

July 13th
- FPGA arrived a lot smaller than I expected, I don't think I'm putting in any time today but if I do I think the next step is going to be doing the pinout, the challenge with this however is there is the pinout from the board itself, the pinout to the FPGA and the pinout from big parts like SPI and ram. My thinking is to make a sperate pinout document for each device so every component has it's own unified pinout table this means getting rid of the row system I had before. I'll make sure I focus on doing this, once it's done I'll have to redo the schematic anyways with the new circuit element since this FPGA is not the same as JLC and I will also have to look into what PCBWay wants and what their design rules are around BGA components. 

July 15th
- Ordered syringes for solder paste
- Redid the schematic for the FPGA to put the new part in and rewired the RAM
- Created an excel sheet with the pinout info
- Broke out the SPI configuration pins for boot, this needs to be implemented properly next time, copy the AU design
- Pins for the M.2 Connection need to be decided on and plumbed
- testpoint the INIT, PROGRAM, DONE, CFGBVS, and PUDC lines
- ADD THE OSCILLATOR 100mhz


July 16th
- PCBWAY STUFF (what to get)
	- 0.25mm (10mil) vias, plated 0.48mm (19mil)
	- 4-3 mil traces (select 4/4 or 3/3) (4/4 is cheaper)
	- trace spacing 
		- One trace 4mil
		- Two trace 3mil

- REFER to BGA design rules when setting up the board stuff'

https://www.altium.com/documentation/altium-designer/controlled-impedance-routing-ad
^ controlled impedance routing in altium

July 28th
- took a bit of a break, I think the current stuff to do is mount the crystal and wire up the boot rom

July 29th
- so I missed this from yesterdays update but I wired up the boot rom the one thing that is missing is any form of termination resistor this should be fine if you run at a lower frequency since boot time isn't a concern