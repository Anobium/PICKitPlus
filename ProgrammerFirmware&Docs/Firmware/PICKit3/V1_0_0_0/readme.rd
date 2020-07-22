Release Notes for the PICkit 3 Programmer Application 

Updated: 2011 January 28

----------------------------------------------------------------------- 
Device Support
----------------------------------------------------------------------- 
This version of the PICkit 3 Programmer Application supports all devices 
supported by the PICkit 3 as of MPLAB 8.60. Refer to the MPLAB release 
notes for more details. Typically, this is installed to C:\Program 
Files\Microchip\MPLAB IDE\Readmes\, and is also available online at
http://www.microchip.com/mplab/. 

----------------------------------------------------------------------- 
Operating System Support List
----------------------------------------------------------------------- 
This tool has been tested under the following operating systems. It is 
expected to work properly on any x86 machine with Microsoft's .NET 2.0
framework installed.

Windows XP 32-bit
Windows 7 32- and 64-bit.

----------------------------------------------------------------------- 
Version 1.0.0.0  --  2011 January 28
----------------------------------------------------------------------- 
Questions, comments, bug reports, and feature requests should be posted 
in the PICkit 3 forum on the Microchip Forums 
(http://www.microchip.com/forums/).

This application requires the .NET 2.0 framework to be installed.

Known Issues: 
------------- 
> Device auto-detect is not yet functional, but the device ID is 
  verified (if the device has one) before all operations.
  
> Some text in the status message box falls off the edge of the box and 
  cannot be read. 
  
> The "Blank Check" feature can frequently indicate that a blank device is 
  not blank. Typically this is due to a configuration word mismatch in the 
  device file. There is no work-around, but manually verifying the 
  configuration values as "blank" is possible by reading the device. 
  
> The Checksum calculation is not fully tested yet and may not match MPLAB 
  in all cases. 
 
> A "No target device found" error is sometimes shown after switching or 
  updating the AP. Simply retry the operation. 

> The application can have problems communicating to the PICkit 3 if the 
  AP or RS is corrupt (say, from an interrupted transfer). The easiest 
  work-around is to use MPLAB to re-flash the programmer with the latest 
  version of the firmware ("Manual Download" in the programmer settings). 
  This manifests itself as trouble connecting to the PICkit 3 or, in the 
  worst cases, application crashes. 
  
> The application cannot recover a PICkit 3 that has only the bootloader
  AP installed. This is not a normal occurance; it can only happen if 
  there is a write failure during certain parts of the firmware upgrade
  process. Use MPLAB to recover the firmware to a consistent state.
  
> The application will sometimes not launch with the PICkit 3 connected. 
  Disconnecting the PICkit 3 should cause the application to show. 

Known quirks: 
------------- 
> Turning off target power supplied by the PICkit 3 can take a noticable 
  amount of time under some circumstances. Two work-arounds exist: Supply 
  target power externally, or manually enable target power from the PICkit 
  3 before an operation so that it is not automatically disabled 
  afterwards. 

> The "Blank Check" feature does not update the progress bar. 

