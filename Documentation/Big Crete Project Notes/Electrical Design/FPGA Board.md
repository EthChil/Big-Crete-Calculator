[[Top Level Electrical]]

# FPGA Board

### Main Components
- SODIMM 204 pin DDR3 ram stick [[DDR3 to FPGA connection]] **done**
- Flash memory 32M SPI Flash [[SPI Memory]]
- 100Mhz Clock
- XC7A200T Artix-7 FPGA **detemine speed grade** [[FPGA Pinout]]
- M.2 connection to motherboard

## A200T Info
XC7A200T-2FBG484I  Industrial -2 speed grade
JLC#: C494680

![[ds181_Artix_7_Data_Sheet 1.pdf]]

## Schematic
![[Pasted image 20210226184506.png]]
![[Pasted image 20210228130613.png]]
## Voltage Rails
### DDR3 RAM
| Rail   | Voltage | Current | Notes                                | Min/Max       | %   |
| ------ | ------- | ------- | ------------------------------------ | ------------- | --- |
| Vdd    | 1.5V    | 2.3A    | current is peak and varies by module | 1.425 - 1.575 | 5%  |
| Vddspd | 3.3V    | 2mA     | likely won't be hooked up            |               |     |
| Vrefca | 0.75V   | 18uA    |                                      | 0.735 - 0.765 | 2%  |
| Vrefdq | 0.75V   | 18uA    |                                      | 0.735 - 0.765 | 2%  |
| Vtt    | 0.75V   | 600mA   | specifies a min I of -600mA          | 0.735 - 0.765 | 2%  |

### A200T FPGA
for more accurate current values use the XPE (xilinx power estimator)

| Rail     | Voltage | Current     | Notes                        | Min/Max      | %    |
| -------- | ------- | ----------- | ---------------------------- | ------------ | ---- |
| Vccint   | 1V      | 328mA       | dependent on speed grade     | 0.95 - 1.05V | 5%   |
| Vccaux   | 1.8V    | 73mA        |                              | 1.71 - 1.89  | 5%   |
| Vccbram  | 1V      | 11mA        | dependent on speed grade     | 0.95 - 1.05V | 5%   |
| Vcco     | 3.3v    | 5mA         |                              | 1.14 - 3.465 | 5%   |
| Vin      | 3.3V    | 10mA x pins | this is the I/O sink voltage | -0.2 - 3.5   | 6%   |
| Vccbat   | 0V      |             |                              |              |      |
| Vmgtavcc | 1V      | 12mA        | Requires special filtering   | 0.97 - 1.03  | 3%   |
| Vmgtavtt | 1.2V    | 12mA        | Requires special filtering   | 1.17 - 1.23  | 2.5% |
| Vccadc   | 1.8V    |             |                              | 1.71 - 1.89  | 5%   |
| Vrefp    | 1.25V   | 15uA        |                              | 1.2-1.3      | 4%   |

See below for special filtering requirements on Vmgtavcc and Vmgtavtt
![[ug482_7Series_GTP_Transceivers-2 1.pdf]]