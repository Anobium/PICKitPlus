                Revised to add M25P class of EEPROMS
                Required PK+ GUI applications of 4.61.0.48 or greater to be able to use these specific EEPROM parts.

                4.61.0.48
                PICkitPlus GUIs now support non-Microchip EEPROMS that require EEPRom erasure, 	EEPRom erasure before writes.
                The chip data atabase needs to support. The following is mandated:
            		  #1 A ChipErasePrepScript = 183. For a DeviceSpecific ChipEraseScript = example is script 348
                and
                #2 Device for the EEPROM that has 	ChipErasePrepScript, ChipEraseScript and the delay as specified below.
                The ChipErasePrepScript should do the heavy lifting of the erasing
                The ChipEraseScript can be as simple as Do Nothing

                We have to use ChipErasePrepScript to ensure we know these chips need specific actions.

                #3 ConfigMasks[4] which is the specific delay, in seconds, for the chip that is required to let the EEPROM completes its work as we cannot test the EEPROM register from a script



