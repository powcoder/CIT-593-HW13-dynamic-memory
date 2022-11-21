<label>                  <address> <contents> <assembly>
MAIN                     0000      9420          
                         0001      D540          
                         0002      16A5       ADD R3, R2, #5
FOR_LOOP                 0003      2403          
                         0004      0603          
                         0005      4801          
                         0006      14A1       ADD R2, R2, #1
                         0007      CFFB          
END_FOR_LOOP             0008      C81B          
SUB_FACTORIAL            0010      6080          
                         0011      2100          
                         0012      0A02          
                         0013      9201          
                         0014      C80D          
END_IF1                  0015      0202          
                         0016      93FF          
                         0017      C80A          
END_IF2                  0018      2107          
                         0019      0C02          
                         001A      93FF          
                         001B      C806          
END_IF3                  001C      1220       ADD R1, R0, #0
LOOP                     001D      2101          
                         001E      0C03          
                         001F      103F       ADD R0, R0, #-1
                         0020      1248       MUL R1, R1, R0
                         0021      CFFB          
END_SUB_FACTORIAL        0022      7280          
                         0023      C1C0          
END                      0024      0000          
VALUES                   4020      0006          
                         4021      0005          
                         4022      0008          
                         4023      000A          
                         4024      FFFB          
