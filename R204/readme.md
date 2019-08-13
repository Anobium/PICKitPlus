                Added new script 347 to support Progmem_erase for 18FxxK42.
                The K42 series was using script 319 this is also used by the 16f18xx and 16f15xx families.
                When I created the K42 scripts I incorrectly used the 16F script.
                This issue lay dormant until the AUTOLOAD feature with EEMEM unchecked called the EraseProgmemScript.

                The 16f have an progmem erase as follows:
                319 MR_NVM_MSB_First_PMemErase10ms_16f

                        AAF2 BB01 AAE7 BB01 AAF2 BB80 AAF2 BB00 AAF2
                        BB00 AAE7 BB01 AAF2 BB18 AAE8 BB02

                        F2 01 WRITE_BYTE_LITERAL 01 //0000.0001-> 1000.0000 Load PC Address
                        E8 02 DELAY_LONG 02
                        F2 80 WRITE_BYTE_LITERAL 80 //1000.0000 -> 0000.0001
                        F2 00 WRITE_BYTE_LITERAL 00 0X00
                        F2 00 WRITE_BYTE_LITERAL 00 0X00
                        E8 02 DELAY_LONG 02
                        F2 18 WRITE_BYTE_LITERAL 18 //0001.1000-> 0001.1000 Bulk Erase Memory
                        E8 02 DELAY_LONG 02


                347 MR_NVM_MSB_First_PMemErase10ms_18f

                        AAF2 BB01 AAE7 BB01 AAF2 BB06 AAF2 BB00 AAF2
                        BB00 AAE7 BB01 AAF2 BB18 AAE8 BB02

                        F2 01 WRITE_BYTE_LITERAL 01 //0000.0001-> 1000.0000 Load PC Address
                        E8 02 DELAY_LONG 02
                        F2 80 WRITE_BYTE_LITERAL 06 //0000.0110 -> 0110.0000
                        F2 00 WRITE_BYTE_LITERAL 00 0X00
                        F2 00 WRITE_BYTE_LITERAL 00 0X00
                        E8 02 DELAY_LONG 02
                        F2 18 WRITE_BYTE_LITERAL 18 //0001.1000-> 0001.1000 Bulk Erase Memory
                        E8 02 DELAY_LONG 02
