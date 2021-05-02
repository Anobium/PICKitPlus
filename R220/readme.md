Rev220.1


        DS40002185B
        PIC18F04Q40 7640h
        PIC18F05Q40 7600h
        PIC18F06Q40 75C0h
        PIC18F14Q40 7620h
        PIC18F15Q40 75E0h
        PIC18F16Q40 75A0h *

        Note: EEMEM specified at 512bytes.

        IPE 5.40 compare error - no impact to PICKitPlus.
            The specification of the 18fxxQ40 is 512byes of EEPROM but the extent of the EEPROM in IPE is 512words.

            For proof. In IPE. Erase part, clear buffer, change the byte at 0x200 in EEPROM, program.

            The following memory area(s) will be programmed:
            EEData memory
            User Id Memory

            Verify failed. [ EEData ] at 0x380200, expected 0x00000003, got 0x00000000

