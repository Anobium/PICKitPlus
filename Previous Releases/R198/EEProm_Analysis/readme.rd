                Implemented support for 24xx102x large EEPROMS.
                Requires 2.63.197, or greater, of the parts database to operate.  The 2.63.197 uses following config.

                The configuration have the following meaning:
                Word1 : 1 = I2C, 2=SPI, 3= Microwire, 4 = UNIO   = 1
                Word2 : address bytes mask                       =0xFFFF
                Word3 : number address bits                      =0x16  
                Word4 : I2C number active Ax pins                =5  where 5 indicates A1 and A2 active adddressing.