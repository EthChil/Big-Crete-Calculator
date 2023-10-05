![[Attachments/Pasted image 20230528215005.png]]
Per image below top left on PCB (when viewing calculator from the back) is Bank B, Top right is Bank A, Bottom Left is Bank D, then finally bottom right is Bank C
Bank B Bank A
Bank D Bank C

![[Attachments/Pasted image 20230528215146.png]]

Mapping this through to pinouts. As can be seen in the image signals only exist on banks B and A with A being the most prominent.

![[Attachments/Pasted image 20230528220600.png]]
alchitry schematic for bank A and B
![[Attachments/Pasted image 20230528220621.png]]
my schematic

Bank B signals (top left)
signal name - connector pin number - a35t pin number - notes
LS5 - 3 - E2 - LED Low Side 5 - output
LS6 - 5 - A2 - LED Low Side 6 - output
LS7 - 6 - B2 - LED Low Side 7 - output
LS8 - 8 - E1 - LED Low Side 8 - output
LS10 - 11 - F3 - LED Low Side 10 - output
LS11 - 12 - F4 - LED Low Side 11 - output
LS12 - 14 - A3 - LED Low Side 12 - output
LS13 - 15 - B4 - LED Low Side 13 - output
LS14 - 17 - A4 - LED Low Side 14 - output
LS9 - 18 - A5 - LED Low Side 9 - output
LS4 - 20 - B5 - LED Low Side 4 - output
LED_EN - 23 - A7 - LED_EN goes to the decoder chip - output
AHS2 - 24 - B7 - LED highside to decoder - output
AHS0 - 49 - B1 - LED highside to decoder - output
AHS1 - 48 - C1 - LED highside to decoder - output

Bank A signals (top right) (J2)
signal name - connector pin number - a35t pin number - notes - direction (a35t perspective)
SWL0 - 2 - T8 - Switch low 0 - input 
SWL1 - 3 - T7 - Switch low 1 - input 
SWL2 - 5 - T5 - Switch low 2 - input 
SWL3 - 6 - R5 - Switch low 3 - input
SWL4 - 8 - R8 - Switch low 4 - input
SWH5 - 9 - P8 - Switch high 5 - output
SWH4 - 11 - L2 - Switch high 4 - output
SWH3 - 12 - L3 - Switch high 3 - output
SWH2 - 14 - J1 - Switch high 2 - output
SWH1 - 15 - K1 - Switch high 1 - output
SWH0 - 17 - H1 - Switch high 0 - output
LS0 - 18 - H2 - LED Low Side 0 - output
LS1 - 20 - G1 - LED Low Side 1 - output
LS2 - 21 - G2 - LED Low Side 2 - output
LS3 - 23 - K5 - LED Low Side 3 - output
PG - 49 - T10 - Power Good Battery Charger - input
D0 - 46 - R6 - LCD D0 - output
D1 - 45 - R7 - LCD D1 - output
D2 - 43 - P9 - LCD D2 - output
D3 - 42 - N9 - LCD D3 - output
D4 - 40 - K2 - LCD D4 - output
D5 - 39 - K3 - LCD D5 - output
D6 - 37 - J4 - LCD D6 - output
D7 - 36 - J5 - LCD D7 - output
LCD_CS - 34 - H3 - LCD chip select - output
LCD_CD - 33 - J3 - LCD chip detect - output
LCD_WR - 31 - H4 - LCD chip write - output
LCD_RD - 30 - H5 - LCD chip read - output

