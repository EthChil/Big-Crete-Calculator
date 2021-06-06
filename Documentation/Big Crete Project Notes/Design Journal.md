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