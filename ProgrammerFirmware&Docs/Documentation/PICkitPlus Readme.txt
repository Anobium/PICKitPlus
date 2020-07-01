Release Notes for PICKitPlus Microcontroller Programmer
PICKitPlus release notes
Updated May 2020


*** Important PICkit2
*** PICKit2Plus software v4.61.xx requires PICkit 2 OS firmware
*** Version 2.32.00 before the application will work correctly.
*** Use the "Download PICkit 2 Firmware" selection on the
*** Tools dropdown menu.  The new OS is normally called
*** PK2V023200.hex


*** Important PICkit3
*** PICkit3Plus software v4.61.xx requires PICkit 3 OS firmware
*** Version 2.00.5 before the application will work correctly.
*** Use the "Download PICkit 3 Firmware" selection on the
*** Tools dropdown menu.  The new OS is normally called
*** PK3OSV020005.hex


-----------------------------------------------------------------
Table of Contents
-----------------------------------------------------------------
1. Introduction
2. Operating System Support List
3. Changes

-------------------------------------------------------------------------------
1. Introduction
-------------------------------------------------------------------------------
This release is specifically intended to widen support for the use of the PICkit2 for the
use of new microcontrollers.


The software include GUI applications and commandline applications.

For simple integration with MPLAB-X using the commandline application and add to your projects build the following:

[your install directory]\PICKitCommandline.exe  -q -w -p$(Device)  -f"$(ImagePath)" --no-verify -mpec

-----------------------------------------------------------------
2. Operating System Support List
-----------------------------------------------------------------

This tool has been tested under the following operating systems:

Windows XP
Windows 7
Windows 8
Windows 8.1
Windows 10

3.  Changes
  4.61.0.6.
    First release.  Why 4.61.  Based on 2.61 and I need to create clear water between the old and the new.
    New functions to support two new programming methods.
    Retains 25 seconds delay whilst testing code base.
  4.61.0.7.
    Fix for User interface remove options
  4.61.0.8.
    Updated to correct 10F (and others OSCCAL) error.  Braces error fixed.
  4.61.0.9.
    Updated to improve user experience.
  4.61.0.10.
    Updated to correct typo.
    Known issue:  18f27j53 family chips [4] may required manual chip selection.
  4.61.0.11.
    Updated to place INI file in the correct directory!
  4.61.0.12.
    Updated to create the INI directory!
  4.61.0.14.
    Updated to display Silicon revision
  4.61.0.15.
    Corrected typo when importing Hex files
  4.61.0.16.
      Documentation only. No functional changes.
  4.61.0.17.
      Fix pain point usage.
  4.61.0.18.
      Add parts database to front page
  4.61.0.19.
      Add EESS to save EE state also added EEOP the actual status.  EESS: Y
  4.61.0.20.
      Added  VDD protection when VDD is lower than VVD.MAX by adding parameter VDDD:Y
  4.61.0.21
      Remove leading * from .Partname
  4.61.0.22
    Added Device onclick to extract Device Name
  4.61.0.23
    Changed to constant for version number
  4.61.0.24
    Changed Help/About information
  4.61.0.25
    Added support for BandGap setting via UI - Select Bandgap 'words'
  4.61.0.26
    Resolved BandGap UI when editing config
  4.61.0.27
    Resolved UI issue with USERIDs
  4.61.0.28
                Resolved Config verification error for bandgap parts.
  4.61.0.29
                Added new menu item to prevent autodetect when starting.
    Controls PDET: <Y, N>
                - ‘Y’ (default) to auto-detect parts on starting application
                - ‘N’ to disable auto-detect on startup (If ADET = N, this is set to N)
  4.61.0.30
                Added support HEF/SAF including new menu option to automatically preserve the device over the programmed memory.
    Removed support for mutliple windows as this is not support with HEF. Nightmare to fix and it did not work on dual screen etc etc
    Disable AUTO load when using HEF/SAF.  This will be reverted asap.
    General improvement in messaging.
    Inclusion of first Vendor specific build.  Look out for PICkit+ Certified Programmers.
                Resolved K50 issue
    Resolved issue with Tools Menu where.. if you pressed the up key...
    New Help
        4.61.0.31
                Added ReadOnly capability for HEF/SAF memory. To resolve usability issue.
    Fix for 18f WRTC on 18F & 18F_K
    Change HEF/SAF Dialog
        4.61.0.32
                Revised handling for HEF/SAF memory drop down.  Data is now in the .dat file.
                Revised HEF/SAF memory display
        4.61.0.33
                Added new functionality.  You can now check you have the latest device database. See Toosl/Check Device Database Version
    Now inspects GitHub for the latest file.  Click the Source to download the latest database.
        4.61.0.34
                Added new functionality.  You can now see and select the last five devices used/selected in the Device Family dropdown
        4.61.0.35
                Revised license information.
    Updated PICKitPlus for PICKit 2 programmers to resolve issue with Auto Import repeating file selection and not cancelling correctly.
        4.61.0.36
                Added tooltip to identified part on the UI. Show memory sizes.
        4.61.0.37
                Improved display of UserIDs on parts with word UserIDs like the 16fs
    Changes to PICKITCOMMANDLINE
    Implemented UserID support
                Refactored DownloadPartScripts to use metaprogramming instead of being WET
                Refactored calls to the PROG_ENTRY script to be more resilient to failures
                Merged BlankCheck and Verify code to reduce WETness
                Fixed bug where -mc would "work" without a filename or a literal
                Can now write UserIDs
                Can now specify UserIDs on the commandline
                Will now verify UserIDs
                Will allow -r to accept hex values
                Note: literal UserID values are **NOT** specified like: -MS:xxxx
        4.61.0.38
                Added UserID tooltips to further improve display of UserIDs and UserID memory locations.
        Commandline 2.14
                Now warns when attempting to write memory areas from a hexfile that does not contain
                Fixed a DIV/0 error in DeviceWrite() attempting to read a nonexistent EEPROM
                Now fails when attempting to write an EEPROM that does not exist, *if* the hexfile contains entries for it
                 - If you try to write ONLY the EEPROM, and there is no EEPROM, you get ArgumentError (1),
                 - or read.
                Now fails when attempting to read or write *only* the EEPROM and there is no EEPROM
                Fixed minor plural error in timespan output
  PICKITCOMMANDLINE 2.17
                To address the problem in PKCMD wherein -MC erases the program memory and -MP erases the config words, PKCMD will now refuse to write one without the other in cases where this would happen.

                Note that the GUI works around this problem by writing everything at once.

                The old PK2CMD.exe does not solve the problem at all. When instructed to write only certain parts of the memory, it performs no erase step, just writes!
  PICKITCOMMANDLINE 2.18
                Resolved case sensitve syntax
  4.61.0.39
                Implemented support for 24xx102x large EEPROMS.
                Requires 2.63.197, or greater, of the parts database to operate.  The 2.63.197 uses following config.

                The configuration have the following meaning:
                Word1 : 1 = I2C, 2=SPI, 3= Microwire, 4 = UNIO   = 1
                Word2 : address bytes mask                       =0xFFFF
                Word3 : number address bits                      =0x16
                Word4 : I2C number active Ax pins                =5  where 5 indicates A1 and A2 active adddressing.

                Changes include UI changes to not enable A0 chip select
                and, new protocol support to select corret EEPROM page addressm see ADDRESS SEQUENCE BIT ASSIGNMENTS in the datasheet, for the addressing protocol
  4.61.0.40
                Resolved user interface issues between AUTO and HEFSAF operations
    Added new capability to support 24LC1025 and 24LC1026 type devices.  Requires "PKPlusDeviceFile.dat" version 2.63.197 file. Tested on Microchip EEPROM and Cypress FRAM 1bmt devices.
  PICKITCOMMANDLINE 2.19
    Updated PICkitCommandLine to correctly writes osccal when using -U and -E parameters.
  4.61.0.41
                Resolved crash in PICKitPlus USART tool when the command line tool was used with a USART session open.
    Change UI to display 'Click here....' when checking Tools/Check Device Database Version.  This still downloads the .dat file for manual installation. We cannot download automatically as the HTTPS certificate would need to be installed.
    PICKITCOMMANDLINE 2.20.  New user identity method introduced.
    PICKITCOMMANDLINE 2.21.  Revised nNew user identity method for PK3 programmer


    PICKITCOMMANDLINE 2.22.  AutoWatch now reacts correctly when you paste a part name into the combobox
    PICKITCOMMANDLINE 2.23.  AutoWatch: Parts now appear in order in the combobox
    PICKITCOMMANDLINE 2.24.  AutoWatch: "Hex file" changed to "Source
                                         AutoWatch: EEPROMs no longer listed in combobox
    PICKITCOMMANDLINE 2.24.  Added -j option to list all detected PKs with their serials
                                         Added -n option to specify a PK to use by its serial

  4.61.0.42
                New capability. PICKitPlus GUIs will now remove debug bit from HEX file when the following is true:
              - the programmer specific ini file in the %Userprofile%\AppData\Local\GreatCowBASIC\  folder has the paramater DBGB: Y.  The default is DBGB: N.
              - the part has a debug config in the range to 1 to 9.  Therefore, any part with zero or greater than 9 will not remove the debug bit.
              - the parts database is version .200 or greater
  4.61.0.43
                Added Tooltips to show CP, DP and Debug config word and config bit.
  4.61.0.44
                Revised UI to handle exception error when using Manual Selection of part.
  4.61.0.45
                Revised UI to improve screen updates.  Removed the update() calls every action.
                Revised UI to remove part tooltip when DP does not exist.
                Revised UI to enable selection of recent part when in Manual mode
  PICKITCOMMANDLINE 2.45    Improved verification performance.
  4.61.0.46
                PICKitPlus GUIs will now remove debug bit from HEX file by default:
                - The programmer specific ini file in the %Userprofile%\AppData\Local\GreatCowBASIC\  folder has the paramater DBGB: Y.
                - The default is DBGB: Y set default is DBGB: N to disable this functionality.

                PICKitPlus GUIs improved to fix Microsoft menu issue where Help in PICKitPlus2 scrolled incorrectly.

  4.61.0.47
                PICKitPlus GUIs now support low ICSP frequencies.  This is required for 18(l)FxxK80 parts (could be others) where the ICSP clock is overclock, or, mistiming the ICSP write operations - which cause programming corruption of the PROGMEM or EEMEM.
                  Config files are in C:\Users\%userprofile%\AppData\Local\GreatCowBASIC folder.  See the UCLK parameter.
                    - To enable uncheck Tools/FastProgramming.
                    - UCLK  connection defaults to a value of 50 equate to 50us delay.
                    - UCLK  set to 0 will disable functionality
                Hover over Tools/FastProgramming shows the values of the configuration
                If the UCLK  = 0 then the SlowISCP(PCLK) parameter will be used.
  PICKITCOMMANDLINE 2.50    Implementation of --icsp-delay to support low ICSP frequency programming for CLI IDEs.
  PICKITCOMMANDLINE 2.55    --devicelist and --devicelist-csv to omit unsupported parts (e.g. EEPROMs, PIC32s)
                            -e clears the UserIDs

  4.61.0.48
                PICKitPlus GUIs now support non-Microchip EEPROMS that require EEPRom erasure,  EEPRom erasure before writes.
                The chip data atabase needs to support. The following is mandated:
                  #1 A ChipErasePrepScript = 183. For a DeviceSpecific ChipEraseScript = example is script 348
        and
        #2 Device for the EEPROM that has   ChipErasePrepScript, ChipEraseScript and the delay as specified below.
        The ChipErasePrepScript should do the heavy lifting of the erasing
        The ChipEraseScript can be as simple as Do Nothing

        We have to use ChipErasePrepScript to ensure we know these chips need specific actions.

        #3 ConfigMasks[4] which is the specific delay, in seconds, for the chip that is required to let the EEPROM completes its work as we cannot test the EEPROM register from a script

  4.61.0.49
        PICKitPlus GUIs now correctly support Revision IDs for ChipFamilies 18 and 22.
        Requires parts database of .208 or greater

  4.61.0.50
        PICKitPlus GUIs when used with the 2.63.210 parts database or greater will now erase UserIDs on Write Operations.
        To completely erase a part complete the following.
          1. Ensure Programmer/Clear Memory Buffer on Erase is selected.
          2. Select `Erase` to erase the part. This will also clear the application buffers.  The UserIDs will be shown as the default values.
          3. Seletct `Write` to write to the part. This will write the default values.
          The part is now Erased

        Added new ini entries to support UserID management
        SUIV: N
        DUIE: N

        Added new ini to support family 19 UserID management
        DUIE: N

        DisableUserIdErase.  This parameter can be Y or N.  When Y this will enable erasure of UserIDs ONLY during Write operations.
        When N this will not erase the UserIds.  This is therefore will force the same operation as prior versions of the applications.

        Added new ini support UserID management
        SUIV: N

        StopUserIdVerification.  This parameter can be Y or N.  When Y the UserIDs will not be verified.

  4.61.0.51
        PICKitPlus now shows the application installation by default when reloading the operating system.

  4.61.0.52
        Added new support for UserID management.  You can now stop load UserIDs
        DUIL: Y

        DisableUserIDLoading.  This parameter can be Y or N.  When Y the UserIDs will not be loaded into memory, therefore the UserIDs in the hex are ignored.
                               This is very useful for the 18FxxQ10 parts where the UserIDs can be larger than the PICKit programmer buffer.
  4.61.0.53
        PICKitPlus now defaults to the WRITE button when writing.
        So, this means if you write to a device, you can press the spacebar to write again.

  4.61.0.54
        PICKitPlus now correctly handles EEPROM check box.
        Release 4.61.0.45 (UI improvements) reset the EEPROM check box incorrect.
  4.61.0.55
        Now handles the state of the EEPROM check box correctly.  4.61.0.54 introduced a condition where the EEPROM setting was not retained.
        PICKitPlus now handles UserIDs of greater than 32 words.
        Remember.... when WRITE(ing) the UserIDs are retained.  Use ERASE first to erase UserIDs.  This may be specific to the 18FxxQ10, so, ensure you understand the impact of ERASE v WRITE operations.



  PICKITCOMMANDLINE 4.25/6     PICKitPlus now handles UserIDs of greater than 32 words.

Help:

      If you leave Tools > Enabled Code Protect (or Data Protect) UNchecked, then whatever the CP configuration bit settings are
      in the hex file are active and therefore used.  So just leave them unchecked and the device will be programmed per the hex
      file settings.

      Note #1: That if the HEX file has the CP bit(s) active, then the PICKit2Plus software will show the Tools > Enable Code Protect
      menu item as checked but grayed out.  This is because the software allows the HEX file settings to be overriden only to enable CP
      when it is not enabled in the HEX file.  It does not allow HEX file settings which enable CP to be overriden to disable CP.

      Note #2: Once the menu items to enable CP/DP are active, either by the user selecting them or by loading a HEX file with CP active,
      the user must manually disable them if a HEX file without CP enabled is later loaded. This prevents accidently programming a device
      with unprotected code when the user desires CP enabled.

      Note #3: The GUI only does a low-voltage erase if the EraseVDD is greater than the selected voltage in the GUI.

Device Constraints:

      18FxxQ10 and may be more... are limited to 32words of UserIDs @ r194 of the parts database

EEPROM support:

    EEPROM support is via the Windows GUI application only.

    Support for I2C EEPROM devices  Here are the notes from the Microchip read-me note. This applies to PICKitPlus.
     
    Ensure the operating voltage does not exceed the parts specification.

    Connections for 24xx devices as example.
            ---------------------------------------
            PICkit 2 Pin             24xx Device Pin (DIP)
            (2) Vdd !                8 Vcc
            (3) GND                  4 Vss
            (5) PGC                  6 SCL (driven as push-pull)
            (6) AUX                  5 SDA (requires pullup resistor)
                                     7 WP - disabled (GND)
                                     1, 2, 3 Ax pins on the part.
                                        Connect to Vdd or GND per
                                        datasheet and to set address
     
    PICkit 2: 24LC devices may not program properly below 3.6V VDD.  This is a limitation of the PICkit 2 AUX IO pin.

    PICkit 3: If you get “I2C Bus Error (No Acknowledge)-Aborted“ first inspect all the connections, then, ensure you have pull-up resistors fitted to SDA and SCL, and, review the Microchip advice in section A.4 Device Support of the PICkit™ 3 Programmer Application User’s Guide.  Also, see the 'Writing EEPROMs with PICkit3.pdf' in your PICKitPlus installation directory.
     
    Bus Speed-
                400kHz with Tools -> Fast Programming checked
                100kHz with Tools -> Fast Programming unchecked
 
                NOTE: Bus pullups are required for all programming operations.  400kHz requires 2k Ohm pullups.
 
     A(n) Chip Select checkboxes within the user interface.
                These are only enabled for devices that support address chip selects, and allow programming of
                multiple devices on the same bus.

     The parts database now shows 24xx00 to 24xx1026.  The xx can be LC, FC, or AA.  Requires 2.63.197, or greater, of the parts database to operate.


25LCxx have been tested and they program as expected, although they seem a bit temperamental at times.
     Critical to the operation is operating voltage.  Do not rely on the PICKit programmer providing 5v - please use external power supply with common 0v.


     Connections for 25LC devices
            ---------------------------------------
           PICkit 2 Pin             25LC Device Pin (DIP)
           (1) VPP                  1 CS
           (2) Vdd                  8 Vcc, 7 HOLD, 3 WP
           (3) GND                  4 Vss
           (4) PGD                  2 SO
           (5) PGC                  6 SCK +2.2K pullup
           (6) AUX                  5 SI + 2.2K pullup



93LC Microwire bus devices:

     Bus Speed-
                ~925kHz with Tools -> Fast Programming checked
                ~245kHz with Tools -> Fast Programming unchecked

     Connections for 93LC devices
            ---------------------------------------
            PICkit 2 Pin             93LC Device Pin (DIP)
            (1) VPP                  1 CS
            (2) Vdd                  8 Vcc
            (3) GND                  5 Vss
            (4) PGD                  4 DO
            (5) PGC                  2 CLK
            (6) AUX                  3 DI
                                     7 PE - enabled (Vdd)
                                     6 'C' Device ORG
                                        Set to select word size


AVR Programming:

          To program an UNO with no bootloader or a bare Mega328P on a breadboard with no bootloader using a PICKit programmer.

          An UNO or a bare m328p can be programmed from GCB using a Pickit 2 and AVRDUDE.

          The command line paramters are:    -c pickit2 -p AT%chipmodel% -U flash:w:%FileName%:i

          The connections from the PICKIT 2 to the UNO are as follows.

          PK2            UNO
           .................................
           Pin 1  = >   ICSP Pin 5    Reset
           Pin 2  = >   ICSP Pin 2    5V
           Pin 3  = >   ICSP Pin 6    GND
           Pin 4  = >   ICSP Pin 1    MISO
           Pin 5  = >   ICSP Pin 3    SCK
           Pin 6  = >   ICSP Pin 4    MOSI

           Alternative Connection method
           PK2            UNO
           ....................................
           Pin 1  = >   Reset
           Pin 2  = >   5V
           Pin 3  = >   GND
           Pin 4  = >   Digital 12    MISO
           Pin 5  = >   Digital 13    SCK
           Pin 6  = >   Digital 11   MOSI

          After the connections are made and the PK2 is powered up the connections can be tested from the AvrDude GUI.
          At the top left select programmer as Microchip Pickit 2. The Port should be USB. The baud rate should be blank.

          At the top right click on "Detect" . The output window should report

          : avrdude -u -c pickit2 -P usb -p m8
          Detected 1e950f = ATmega328P

          Now the GUI can be closed and the UNO Programmed with the PK2 set as the
          programmer in Programmer Preferences.

          Note: The PICKit 2 will not power the UNO after programming. An external power source
          should be used and can be connected during programming.

          Warning ! ....... Programing the UNO with this method will erase the bootloader on the m328p.

          However the PICKit2 can also burn the bootloader back on if required.

Parts Database Check:

     The parts database version is at url:  https://github.com/Anobium/PICKitPlus/blob/master/version.txt

     This URL contains the latest support parts database.

Parts Tracker:
  18F67K22 class of parts.  Ensure the programming and the operating voltages meet the minimum specification.
