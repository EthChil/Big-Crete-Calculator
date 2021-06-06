# Power Subcircuit

## Battery and BMS
### Battery

Flat celled LIPO either 2s with bucks or 1s and boost for 5V line
2 cell for 8.4V max 6.6V min

### BMS


## Power Converters


| Voltage | Current | Target Current | FPGA Rails                | RAM Rails | Display Rails | LED Driver Rails | notes |
| ------- | ------- | -------------- | ------------------------- | --------- | ------------- | ---------------- | ----- |
| 1V      | 350mA   | 500mA          | Vccint, Vccbram, Vmgtavcc |           |               |                  | 3%    |
| 1.8V    | 73mA    | 250mA          | Vccaux, Vccadc            |           |               |                  | 5%    |
| 3.3v    | 12mA    | 250mA          | Vcco                      | Vddspd    | Vcc           |                  | 5%    |
| 1.2V    | 12mA    | 100mA          | Vmgtavtt                  |           |               |                  | 2.5%  |
| 1.25V   | 15uA    | 50mA           | Vrefp                     |           |               |                  | 4%    |
| 1.5V    | 2.3A    | 3A             |                           | Vdd       |               |                  | 5%    |
| 0.75V   | 610mA   | 1A             |                           | Vtt       |               |                  | 2%    |
| 5V      | 530mA   | 1A             |                           |           | Backlight     | Vcc              | 5%    |


Total Current Draw -> 6.25A
Total Power -> 12.3075W

Regulator setup
5v (Buck) 1A

3.3v (Buck) 0.25A

1.5v (Buck) 3.15A
- 1.25v (Linear) 0.15A
	- 1.2v (Linear) 0.1A


1.8v (Buck) 1.5A
- 1v (Linear) 0.5A
- 0.75v (Linear) 1A


4 channel buck IC 
LT8602

produces the following rails
5v @ 1A
3.3v -> feeds into 1.5v and 1.8v
1.5v 
1.8v


## Wireless Charging Circuit
