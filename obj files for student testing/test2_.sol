<label>                  <address> <contents> <assembly>
INIT                     0000      F001          
                         0001      90FF          
                         0002      D1FF          
                         0003      8000          
START                    0005      1042       ADD R0, R1, R2
                         0006      170D       MUL R3, R4, R5
                         0007      1DD0       SUB R6, R7, R0
                         0008      12DA       DIV R1, R3, R2
IMMS_XB                  000B      112F       ADD R0, R4, #15
                         000C      1FF0       ADD R7, R7, #-16
BRANCH                   000D      081B          
                         000E      0DFC          
                         000F      0BF5          
                         0010      0403          
                         0011      0607          
                         0012      03FA          
                         0013      0FF1          
LOGICALS                 0014      5283          
                         0015      52D2          
                         0016      52DA          
                         0017      52BF          
                         0018      51C8          
COMPARES                 0019      2001          
                         001A      2483          
                         001B      2940          
                         001C      2B3F          
                         001D      2DFF          
                         001E      2F80          
DMEM                     001F      629F          
                         0020      72A0          
SHIFTERS_MOD             0021      A70F          
                         0022      AB90          
                         0023      AE2A          
                         0024      A2BB          
                         0025      0000          
JUMPS                    0026      480F          
                         0027      4000          
                         0028      C040          
END                      0029      0000          
SUBROUTINE               00F0      102A       ADD R0, R0, #10
                         00F1      CF2F          
END_SUBROUTINE           00F2      0000          
VALUES                   2000      8000          
                         2001      7FFF          
                         2002      52D2          
                         2003      1042
                         2004      0DFC          
                         2005      297B          
