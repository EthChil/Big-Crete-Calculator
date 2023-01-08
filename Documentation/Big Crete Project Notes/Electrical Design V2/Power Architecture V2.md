
## OPTION 1 - 1s boost to 5V

(preferred option)

Battery charger circuit
RT9526A - used in numworks calculator
![[Pasted image 20230106223113.png]]
Numworks calculator power circuit 

Pins
Vin (hook to USB power)
Iset - use a resistor to tune charge speed
Imin - use a resistor to tune minimum current
CHG_SB
PGB
BATT - add output capacitor and hook into cells


Boost circuit
TLV61070A - 5V output with 2.7V to 4.35V on input which is within lipo range



Continous power circuit

Make brekaout PCBs for ICs that are breadboard mountable 



## OPTION 2 - 2s BMS and buck to 5V
