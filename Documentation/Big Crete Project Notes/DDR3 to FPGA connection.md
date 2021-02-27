# Connection from FGPA to RAM

relates to [[FPGA Board]]

## Other DDR Pins
| Pin Name | RAM Pin | Function             |
| -------- | ------- | -------------------- |
| Vrefdq   | 1       | [[FPGA Board]]       |
| Vss      | 3       | 0V                   |
| Vss      | 9       | 0V                   |
| Vss      | 17      | 0V                   |
| Vss      | 23      | 0V                   |
| Vss      | 29      | 0V                   |
| Vss      | 35      | 0V                   |
| Vss      | 41      | 0V                   |
| Vss      | 47      | 0V                   |
| Vss      | 52      | 0V                   |
| Vss      | 61      | 0V                   |
| Vss      | 67      | 0V                   |
| CB0      | 69      | Checkbit             |
| CB1      | 71      | Checkbit             |
| Vss      | 73      | 0V                   |
| Vss      | 79      | 0V                   |
| CB2      | 81      | Checkbit             |
| CB3      | 83      | Checkbit             |
| Vdd      | 85      | [[FPGA Board]]       |
| Vdd      | 101     | [[FPGA Board]]       |
| Vdd      | 109     | [[FPGA Board]]       |
| Vdd      | 115     | [[FPGA Board]]       |
| Vdd      | 123     | [[FPGA Board]]       |
| Vdd      | 131     | [[FPGA Board]]       |
| Vss      | 137     | 0V                   |
| Vss      | 143     | 0V                   |
| Vss      | 155     | 0V                   |
| Vss      | 163     | 0V                   |
| Vss      | 169     | 0V                   |
| Vss      | 175     | 0V                   |
| Vss      | 181     | 0V                   |
| Vss      | 187     | 0V                   |
| Vss      | 195     | 0V                   |
| SA0      | 197     | Serial Address Input |
| Vddspd   | 199     | [[FPGA Board]]       |
| SA1      | 201     | Serial Address Input |
| Vtt      | 203     | [[FPGA Board]]       |
| Vss      | 2       | 0V                   |
| Vss      | 8       | 0V                   |
| Vss      | 14      | 0V                   |
| Vss      | 20      | 0V                   |
| Vss      | 26      | 0V                   |
| Vss      | 32      | 0V                   |
| Vss      | 38      | 0V                   |
| Vss      | 46      | 0V                   |
| Vss      | 52      | 0V                   |
| Vss      | 58      | 0V                   |
| Vss      | 64      | 0V                   |
| Vss      | 70      | 0V                   |
| CB4      | 72      | Checkbit             |
| CB5      | 74      | Checkbit             |
| Vss      | 78      | 0V                   |
| Vrefca   | 84      | [[FPGA Board]]       |
| Vdd      | 86      | [[FPGA Board]]       |
| Vdd      | 94      | [[FPGA Board]]       |
| Vdd      | 102     | [[FPGA Board]]       |
| Vdd      | 110     | [[FPGA Board]]       |
| Vdd      | 116     | [[FPGA Board]]       |
| Vdd      | 124     | [[FPGA Board]]       |
| Vdd      | 132     | [[FPGA Board]]       |
| Vss      | 138     | 0V                   |
| Vss      | 146     | 0V                   |
| Vss      | 152     | 0V                   |
| Vss      | 158     | 0V                   |
| Vss      | 164     | 0V                   |
| Vss      | 170     | 0V                   |
| Vss      | 178     | 0V                   |
| Vss      | 184     | 0V                   |
| Vss      | 190     | 0V                   |
| Vss      | 196     | 0V                   |
| Event    | 198     | over temp on RAM     |
| SDA      | 200     | SPD SDA              |
| SCL      | 202     | SPD SCL              |
| Vtt      | 204     | [[FPGA Board]]       |

## FPGA to DDR Connection

| Pin Name  | RAM Pin | FPGA Pin | Notes                       |
| --------- | ------- | -------- | --------------------------- |
| dq0       | 5       | F14      | SSTL15                      |
| dq1       | 7       | F16      | SSTL15                      |
| dq2       | 13      | E17      | SSTL15                      |
| dq3       | 15      | E13      | SSTL15                      |
| dq4       | 4       | E14      | SSTL15                      |
| dq5       | 6       | E16      | SSTL15                      |
| dq6       | 16      | D16      | SSTL15                      |
| dq7       | 18      | D14      | SSTL15                      |
| dq8       | 19      | B16      | SSTL15                      |
| dq9       | 21      | C13      | SSTL15                      |
| dq10      | 31      | B13      | SSTL15                      |
| dq11      | 33      | A13      | SSTL15                      |
| dq12      | 22      | A14      | SSTL15                      |
| dq13      | 24      | B17      | SSTL15                      |
| dq14      | 34      | B18      | SSTL15                      |
| dq15      | 36      | D17      | SSTL15                      |
| dq16      | 37      | C18      | SSTL15                      |
| dq17      | 39      | C19      | SSTL15                      |
| dq18      | 49      | E19      | SSTL15                      |
| dq19      | 51      | D19      | SSTL15                      |
| dq20      | 40      | A20      | SSTL15                      |
| dq21      | 42      | A18      | SSTL15                      |
| dq22      | 48      | A19      | SSTL15                      |
| dq23      | 50      | F19      | SSTL15                      |
| dq24      | 55      | C20      | SSTL15                      |
| dq25      | 57      | C22      | SSTL15                      |
| dq26      | 63      | B22      | SSTL15                      |
| dq27      | 65      | E22      | SSTL15                      |
| dq28      | 54      | D22      | SSTL15                      |
| dq29      | 56      | E21      | SSTL15                      |
| dq30      | 66      | D21      | SSTL15                      |
| dq31      | 68      | G21      | SSTL15                      |
| dq32      | 133     | K14      | SSTL15                      |
| dq33      | 135     | M13      | SSTL15                      |
| dq34      | 145     | L13      | SSTL15                      |
| dq35      | 147     | L14      | SSTL15                      |
| dq36      | 134     | L15      | SSTL15                      |
| dq37      | 136     | L16      | SSTL15                      |
| dq38      | 142     | K16      | SSTL15                      |
| dq39      | 144     | M15      | SSTL15                      |
| dq40      | 151     | W22      | SSTL15                      |
| dq41      | 153     | AA20     | SSTL15                      |
| dq42      | 159     | AA21     | SSTL15                      |
| dq43      | 161     | AB21     | SSTL15                      |
| dq44      | 148     | AB22     | SSTL15                      |
| dq45      | 150     | U20      | SSTL15                      |
| dq46      | 160     | V20      | SSTL15                      |
| dq47      | 162     | W19      | SSTL15                      |
| dq48      | 165     | Y18      | SSTL15                      |
| dq49      | 167     | Y19      | SSTL15                      |
| dq50      | 177     | V18      | SSTL15                      |
| dq51      | 179     | V19      | SSTL15                      |
| dq52      | 166     | W17      | SSTL15                      |
| dq53      | 168     | AA18     | SSTL15                      |
| dq54      | 174     | AB18     | SSTL15                      |
| dq55      | 176     | U17      | SSTL15                      |
| dq56      | 183     | R14      | SSTL15                      |
| dq57      | 185     | R18      | SSTL15                      |
| dq58      | 191     | T18      | SSTL15                      |
| dq59      | 193     | P15      | SSTL15                      |
| dq60      | 180     | R16      | SSTL15                      |
| dq61      | 182     | N13      | SSTL15                      |
| dq62      | 192     | N14      | SSTL15                      |
| dq63      | 194     | P16      | SSTL15                      |
| dm0       | 11      | F13      | SSTL15, optionally pull low |
| dm1       | 28      | B15      | SSTL15, optionally pull low |
| dm2       | 44      | B20      | SSTL15, optionally pull low |
| dm3       | 59      | D20      | SSTL15, optionally pull low |
| dm4       | 140     | K13      | SSTL15, optionally pull low |
| dm5       | 157     | W21      | SSTL15, optionally pull low |
| dm6       | 172     | V17      | SSTL15, optionally pull low |
| dm7       | 189     | P14      | SSTL15, optionally pull low |
| dqsp0     | 12      | C14      | DIFF_SSTL15                 |
| dqsn0     | 10      | C15      | DIFF_SSTL15                 |
| dqsp1     | 27      | A15      | DIFF_SSTL15                 |
| dqsn1     | 25      | A16      | DIFF_SSTL15                 |
| dqsp2     | 45      | F18      | DIFF_SSTL15                 |
| dqsn2     | 43      | E18      | DIFF_SSTL15                 |
| dqsp3     | 62      | B21      | DIFF_SSTL15                 |
| dqsn3     | 60      | A21      | DIFF_SSTL15                 |
| dqsp4     | 141     | K17      | DIFF_SSTL15                 |
| dqsn4     | 139     | J17      | DIFF_SSTL15                 |
| dqsp5     | 156     | Y21      | DIFF_SSTL15                 |
| dqsn5     | 154     | Y22      | DIFF_SSTL15                 |
| dqsp6     | 173     | AA19     | DIFF_SSTL15                 |
| dqsn6     | 171     | AB20     | DIFF_SSTL15                 |
| dqsp7     | 188     | N17      | DIFF_SSTL15                 |
| dqsn7     | 186     | P17      | DIFF_SSTL15                 |
| addr14    | 90      | J14      | SSTL15                      |
| addr13    | 130     | H14      | SSTL15                      |
| addr12    | 95      | G17      | SSTL15                      |
| addr11    | 96      | G18      | SSTL15                      |
| addr10    | 117     | J15      | SSTL15                      |
| addr9     | 92      | H15      | SSTL15                      |
| addr8     | 97      | H17      | SSTL15                      |
| addr7     | 98      | H18      | SSTL15                      |
| addr6     | 100     | J22      | SSTL15                      |
| addr5     | 99      | H22      | SSTL15                      |
| addr4     | 104     | H20      | SSTL15                      |
| addr3     | 103     | G20      | SSTL15                      |
| addr2     | 106     | K21      | SSTL15                      |
| addr1     | 105     | K22      | SSTL15                      |
| addr0     | 107     | M21      | SSTL15                      |
| ba2       | 91      | L21      | SSTL15                      |
| ba1       | 108     | J20      | SSTL15                      |
| ba0       | 119     | J21      | SSTL15                      |
| ckp0      | 111     | H13      | DIFF_SSTL15                 |
| ckn0      | 113     | G13      | DIFF_SSTL15                 |
| ckp1      | 112     | G15      | DIFF_SSTL15                 |
| ckn1      | 114     | G16      | DIFF_SSTL15                 |
| rasn      | 122     | J19      | SSTL15                      |
| casn      | 125     | H19      | SSTL15                      |
| wen       | 121     | N22      | SSTL15                      |
| resetn    | 30      | D15      | LVCMOS15                    |
| cke0      | 87      | L18      | SSTL15                      |
| cke1      | 89      | N18      | SSTL15                      |
| odt0      | 126     | N19      | SSTL15                      |
| odt1      | 128     | N20      | SSTL15                      |
| csn0      | 127     | M22      | SSTL15                      |
| csn1      | 129     | M18      | SSTL15                      |
| sys_clk_i |         | K18      |                             |

