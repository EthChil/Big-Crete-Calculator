[[Top Level Electrical]]

# FPGA Board

### Main Components
- SODIMM 204 pin DDR3 ram stick [[DDR3 to FPGA connection]] **done**
- Flash memory 32M SPI Flash [[SPI Memory]]
- 100Mhz Clock
- XC7A200T Artix-7 FPGA **detemine speed grade** [[FPGA Pinout]]
- M.2 connection to motherboard

## Schematic
![[Pasted image 20210226184506.png]]
![[Pasted image 20210228130613.png]]
## Voltage Rails
### DDR3 RAM
| Rail   | Voltage | Current | Notes                                |
| ------ | ------- | ------- | ------------------------------------ |
| Vdd    | 1.5V    | 2.3A    | current is peak and varies by module |
| Vddspd | 3.3V    | 2mA     | likely won't be hooked up            |
| Vrefca | 0.75V   | 18uA    |                                      |
| Vrefdq | 0.75V   | 18uA    |                                      |
| Vtt    | 0.75V   | 600mA   | specifies a min I of -600mA          |

### A200T FPGA
for more accurate current values use the XPE (xilinx power estimator)

| Rail     | Voltage     | Current     | Notes                    |
| -------- | ----------- | ----------- | ------------------------ |
| Vccint   | 0.95V or 1V | 328mA       | dependent on speed grade |
| Vccaux   | 1.8V        | 73mA        |                          |
| Vccbram  | 0.95V or 1V | 11mA        | dependent on speed grade |
| Vcco     | 3.3v        | 5mA         |                          |
| Vin      | 3.3V        | 10mA x pins |                          |
| Vccbat   | 0V          |             |                          |
| Vmgtavcc | 1V          | 12mA        |                          |
| Vmgtavtt | 1.2V        | 12mA        |                          |
| Vccadc   | 1.8V        |             |                          |
| Vrefp    | 1.25V       | 15uA        |                          |


