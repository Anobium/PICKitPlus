                Revised to resolve 16f and 18f MSB chip read REVISION byte and word
                Scripts 308 and 322

                308  MR_NVM_MSB_First_RdDevID1

                        Was

                        F2 01    WRITE_BYTE_LITERAL    01    //0000.0001 -> 1000.0000    Load PC Address
                        E7 01    DELAY_SHORT           01
                        F2 80    WRITE_BYTE_LITERAL
                        F2 00    WRITE_BYTE_LITERAL
                        F2 30    WRITE_BYTE_LITERAL
                        E7 01    DELAY_SHORT           01
                        F2 3F    WRITE_BYTE_LITERAL    3F    //0011.1111 -> 1111.1100    Read Data from NVM
                        E7 01    DELAY_SHORT           01
                        EF    READ_BYTE
                        F0    READ_BYTE_BUFFER
                        F0    READ_BYTE_BUFFER

                        Now

                        F2 01    WRITE_BYTE_LITERAL    01    //0000.0001 -> 1000.0000    Load PC Address
                        E7 01    DELAY_SHORT           01
                        F2 80    WRITE_BYTE_LITERAL
                        F2 00    WRITE_BYTE_LITERAL
                        F2 30    WRITE_BYTE_LITERAL
                        E7 01    DELAY_SHORT           01
                        F2 3F    WRITE_BYTE_LITERAL    3F    //0011.1111 -> 1111.1100    Read Data from NVM
                        E7 01    DELAY_SHORT           01
                        EF    READ_BYTE
                        F0    READ_BYTE_BUFFER
                        F0    READ_BYTE_BUFFER
                        F2 01    WRITE_BYTE_LITERAL    01    //0000.0001 -> 1000.0000    Load PC Address
                        E7 01    DELAY_SHORT           01
                        F2 80    WRITE_BYTE_LITERAL
                        F2 00    WRITE_BYTE_LITERAL
                        F2 50    WRITE_BYTE_LITERAL
                        E7 01    DELAY_SHORT           01
                        F2 3F    WRITE_BYTE_LITERAL    3F    //0011.1111 -> 1111.1100    Read Data from NVM
                        E7 01    DELAY_SHORT           01
                        EF    READ_BYTE
                        F0    READ_BYTE_BUFFER
                        F0    READ_BYTE_BUFFER

                322 18F_NVM_MSB_First_RdDevID1

                        Was

                        F2 01    WRITE_BYTE_LITERAL    01    //0000.0001 -> 1000.0000    Load PC Address
                        E7 01    DELAY_SHORT           01
                        F2 FE    WRITE_BYTE_LITERAL    FE    //3FFFFE
                        F2 FF    WRITE_BYTE_LITERAL    FF
                        F2 3F    WRITE_BYTE_LITERAL    3F
                        E7 01    DELAY_SHORT           01
                        F2 3F    WRITE_BYTE_LITERAL    3F    //0011.1111 -> 1111.1100    Read Data from NVM
                        E7 01    DELAY_SHORT           01
                        EB 07    READ_BITS 7           07
                        F0       READ_BYTE_BUFFER
                        F0       READ_BYTE_BUFFER
                        EB 01    READ_BITS 1           01

                        Now


                        F2 01    WRITE_BYTE_LITERAL    01    //0000.0001 -> 1000.0000    Load PC Address
                        E7 01    DELAY_SHORT           01
                        F2 FE    WRITE_BYTE_LITERAL    FE    //3FFFFE
                        F2 FF    WRITE_BYTE_LITERAL    FF
                        F2 3F    WRITE_BYTE_LITERAL    3F
                        E7 01    DELAY_SHORT           01
                        F2 3F    WRITE_BYTE_LITERAL    3F    //0011.1111 -> 1111.1100    Read Data from NVM
                        E7 01    DELAY_SHORT           01
                        EB 07    READ_BITS 7           07
                        F0       READ_BYTE_BUFFER
                        F0       READ_BYTE_BUFFER
                        EB 01    READ_BITS 1           01
                        F2 01    WRITE_BYTE_LITERAL    01    //0000.0001 -> 1000.0000    Load PC Address
                        E7 01    DELAY_SHORT           01
                        F2 FE    WRITE_BYTE_LITERAL    FE    //3FFFFC
                        F2 FF    WRITE_BYTE_LITERAL    FF
                        F2 1F    WRITE_BYTE_LITERAL    1F
                        E7 01    DELAY_SHORT           01
                        F2 3F    WRITE_BYTE_LITERAL    3F    //0011.1111 -> 1111.1100    Read Data from NVM
                        E7 01    DELAY_SHORT           01
                        EB 07    READ_BITS 7           07
                        F0       READ_BYTE_BUFFER
                        F0       READ_BYTE_BUFFER
                        EB 01    READ_BITS 1           01
