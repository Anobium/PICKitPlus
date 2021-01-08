<div class="section">

<div class="titlepage">

<div>

<div>

### <span id="pkcmd_lx_usage"></span>PKCMD-LX Usage

</div>

</div>

</div>

<span class="strong">**Introduction**</span>

These are usage instructions.  We assume a PICkit programmer and you are
using the programmer as the power source.    
  
In the examples below substitute %chipname% with the name of your target
chip, and substitute %Filename% with the path and filename of your hex
file.    
  
To program all memory regions (except userids) and leave 5v on from the
PICkit programmer:

``` screen
     -w -p%ChipModel% -f%FileName% -mpec -zv -a5
```

To program all memory regions at 3.3v and leave the power on afterward:

``` screen
     -w -p%ChipModel%   -f%FileName% -mpec -zv -a3.3
```

To program all memory regions using an external power source:

``` screen
     -p%ChipModel% -f%FileName% -mpec
```

To program config and program memories whilst retaining eeprom contents,
using external power:

``` screen
     -p%ChipModel% -f%FileName% -mpc
```

  
  

<span class="strong">**Commands**</span>  
  

<div class="informaltable">

<table data-border="1" width="100%">
<thead>
<tr class="header">
<th style="text-align: left;">Command          </th>
<th style="text-align: left;">Parameter</th>
<th style="text-align: left;">Explanation</th>
<th style="text-align: left;">Usage</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;"><p>-2</p></td>
<td style="text-align: left;"><p>No parameter</p></td>
<td style="text-align: left;"><p>-2    Selects a PICKit 2 programmer only.  </p>
<p>The application can be forced to use a PICKit 2 programmer.   This is useful when you have more than one programmer attached.  </p></td>
<td style="text-align: left;"><p>Usage:<br />
<br />
<code class="literal">-2</code><br />
<br />
Will select a PICKit 2 only for programming operations.<br />
</p></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>-3</p></td>
<td style="text-align: left;"><p>No parameter</p></td>
<td style="text-align: left;"><p>-3    Selects a PICKit 3 programmer only.</p>
<p>The application can be forced to use a PICKit 3 programmer and ignore any PICKit 2 devices. This is useful when you have more than one programmer attached.</p></td>
<td style="text-align: left;"><p>Usage:<br />
<br />
<code class="literal">-3</code><br />
<br />
Will select a PICKit 3 only for programming operations.<br />
</p></td>
</tr>
<tr class="odd">
<td style="text-align: left;"><p>--devicelist</p></td>
<td style="text-align: left;"> </td>
<td style="text-align: left;"><p>--devicelist    List all supported devices.</p>
<p>This is an exclusive command. Other command line parameters will be ignored.</p></td>
<td style="text-align: left;"><p>Usage:<br />
<br />
<code class="literal">--devicelist</code><br />
<br />
Will show the revision of the devices database and a complete list of the supported devices in this database.</p>
<p>You may wish to pipe or redirect the output to a file. For example:</p>
<p>--devicelist | more Will show the information in pages using the <code class="literal">more</code> command.<br />
<br />
</p></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>--devicelist-csv</p></td>
<td style="text-align: left;"> </td>
<td style="text-align: left;"><p>--devicelist-csv    List all supported devices in CSV format.</p>
<p>This is an exclusive command. Other command line parameters will be ignored.</p></td>
<td style="text-align: left;"><p>Usage:<br />
<br />
<code class="literal">--devicelist-csv</code><br />
<br />
Will show the revision of the devices database and a complete list of the supported devices using a comma delimited format.</p>
<p>You may wish to pipe or redirect the output to a file.<br />
<br />
</p></td>
</tr>
<tr class="odd">
<td style="text-align: left;"><p>--family</p></td>
<td style="text-align: left;"><p>family number</p></td>
<td style="text-align: left;"><p>--family        Use automatic selection for the attached microcontroller within the family of microcontrollers.</p>
<p>This is mutually exclusive to <code class="literal">-p</code></p></td>
<td style="text-align: left;"><p>Usage:<br />
<br />
<code class="literal">-- family 22</code></p>
<p>The software will search through the family 22 microcontrollers.</p>
<p><br />
<br />
</p></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>--firmware</p></td>
<td style="text-align: left;"><p>No parameter</p></td>
<td style="text-align: left;"><p>--firmware    Flash firmware for a PICKIT 3 programmer.</p>
<p>This an exclusive command. Other command line parameters will be ignored.</p>
<p>PICKit 3 device programmmer hex files are assumed to be in the same folder as the program.</p>
<p>When using this switch you may get an error on the first attempt. This a know condition. Simply try the switch and/or unplug and retry.</p></td>
<td style="text-align: left;"><p>Usage:<br />
<br />
For PICKIT3 Programmer <code class="literal">--firmware</code><br />
<br />
</p></td>
</tr>
<tr class="odd">
<td style="text-align: left;"><p>-a</p></td>
<td style="text-align: left;"><p>Requires a parameter</p></td>
<td style="text-align: left;"><p>-a    Adjust the standard operating voltage.</p>
<p>Can be used with programmers that support changing the operating voltage, such as official PICKit 2 and 3 tools. Not all clone PICKIT programmers support changing the operating voltages.</p>
<p>Examples: -a5 -a3.3 -a2.8</p>
<p>If instructed to leave power on after programming (-zv), the voltage after programming will reflect this parameter.</p>
<p>The -a parameter requires -w to operate. If -w is not specified then -a will not set the operating voltage.</p>
<p>See also: -k to remove programmer power.</p></td>
<td style="text-align: left;"><p>Usage:<br />
<br />
Example 1. Set to 3.3v<br />
<br />
<code class="literal">-w   -pPIC12f675   -f12f675.hex  -u343c  -mpec  -a3.3 -zv</code><br />
<br />
Example 2. Set to 5.0v<br />
<br />
<code class="literal">-w   -pPIC12f675   -f12f675.hex  -u343c  -mpec  -a5 -zv</code><br />
<br />
Example 3. Set to the default operating voltage. -a is not explicitly stated as -w will set to the standard operating voltage. This is shown for completeness.<br />
<br />
<code class="literal">-w   -pPIC12f675   -f12f675.hex  -u343c  -mpec  -zv</code><br />
<br />
</p>
<p><span class="strong"><strong>Fixed Voltage Case</strong></span><br />
<br />
Some clone programmers lack the ability to change the voltage. When using such a tool, -a will have no effect.</p></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>-b</p></td>
<td style="text-align: left;"><p>Requires a filename as parameter</p></td>
<td style="text-align: left;"><p>-b    The filename of the PKPlusDeviceFile.dat file.</p>
<p>This an optional switch. The PKPlusDeviceFile.dat file is assumed to be in the same folder as the AppImage, unless otherwise specified.</p>
<p>If present, --devicefile and --devicefile-csv will take this switch into account.</p></td>
<td style="text-align: left;"><p>Usage:<br />
<br />
<code class="literal">-b ”PKPlusDeviceFile.dat”</code><br />
If the .dat file in NOT in the same folder the complete path and filename must be specified.<br />
</p></td>
</tr>
<tr class="odd">
<td style="text-align: left;"><p>-c</p></td>
<td style="text-align: left;"><p>No parameter</p></td>
<td style="text-align: left;"><p>-c  Blank Check.</p>
<p>Set the errorlevel to 0 if blank and nonzero (usually 16) otherwise.</p>
<p>  </p></td>
<td style="text-align: left;"><p>Usage:<br />
<br />
<code class="literal">-c</code><br />
<br />
</p></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>-d</p></td>
<td style="text-align: left;"><p>-d Requires a parameter</p></td>
<td style="text-align: left;"><p>-d  Delay on exit of the application.</p>
<p>This switch will delay the exit of the application. This allows you time to review the output from the application (for example if you are running it from a script or IDE which will close the output window immediately afterward).</p>
<p>You can specify a time delay or wait for a key press. For a time delay, use -dN, where N is an integer value. To wait for a keypress, use -dK.</p>
<p>Some IDEs do not play well with -dK, because they don’t allow the user to interact with the spawned process using the keyboard. Using -dK with IDEs that do not support user input during programming may cause the IDE to lock up, waiting for a key press that can never arrive. Your mileage may vary.</p></td>
<td style="text-align: left;"><p>Usage:<br />
<br />
<code class="literal">-d1</code>  Delay 1 second<br />
<br />
<code class="literal">-dK</code>  Wait until key press<br />
</p></td>
</tr>
<tr class="odd">
<td style="text-align: left;"><p>-e</p>
<p>--erase</p></td>
<td style="text-align: left;"><p>No parameter required</p></td>
<td style="text-align: left;"><p>-e Erase device</p>
<p>All memory regions and eeprom (if present) are reset to their default values as specified in the datasheet for that chip.</p>
<p>This is a positional argument. Positional arguments are processed in the order they are given. If -e is placed AFTER -m, the device will first be programmed and then subsequently erased.</p>
<p>The purpose of positional arguments is to permit multiple operations (erase, read, write) to be performed in a single invocation.</p></td>
<td style="text-align: left;"> </td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>-g</p></td>
<td style="text-align: left;"><p>Requires a parameter or parameter(s) string</p></td>
<td style="text-align: left;"><p>-g get (read, export) memory contents from device.</p>
<p>Full options are: -gpecs</p>
<p>memory regions are:</p>
<p>p = Program memory</p>
<p>e = EEPROM</p>
<p>c = Configuration memory</p>
<p>s = UserIDs</p>
<p>1) At least one memory region MUST be specified. If no memory region is specified as a parameter then the operation will fail.</p>
<p>2) If memory regions are specified then the specified regions are exported to the file specified with -f. For example, -gc will export the config memory region.</p>
<p>3) The export will be to the terminal (STDOUT) if -f is not specified.</p>
<p>4) -f is positional and must be specified BEFORE the -g or -m operation to which it refers.</p></td>
<td style="text-align: left;"><p>Usage:<br />
<br />
<code class="literal">-f output.hex   -gpec</code>     Get program, eeprom and config memory regions.<br />
<br />
<code class="literal">-gs</code>     Display userIDs on terminal<br />
<br />
<code class="literal">-gc</code>     Display config on terminal<br />
<br />
</p></td>
</tr>
<tr class="odd">
<td style="text-align: left;"><p>-h</p></td>
<td style="text-align: left;"><p>No parameter</p></td>
<td style="text-align: left;"><p>-h Show the basic Help.</p>
<p>This switch shows a basic list of the supported arguments and their purposes.</p></td>
<td style="text-align: left;"><p>Usage:</p>
<p>`-h ` Shows the list of the command line arguments.</p></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>-i</p></td>
<td style="text-align: left;"><p>No parameter</p></td>
<td style="text-align: left;"><p>-i  Display device ID and revision.</p>
<p>Shows the Device ID and Revision in hexadecimal.</p></td>
<td style="text-align: left;"><p>Usage:<br />
<br />
<code class="literal">-i</code>   Show the device ID and revision</p></td>
</tr>
<tr class="odd">
<td style="text-align: left;"><p>-j</p></td>
<td style="text-align: left;"><p>No parameter</p></td>
<td style="text-align: left;"><p>-j  Detect and summarise the attached PICKit programmers.</p>
<p>Unit IDs of all connected PICKit programmers will be displayed.</p></td>
<td style="text-align: left;"><p>Usage:<br />
<br />
<code class="literal">-j</code>  Show the PICKit programmers.<br />
</p></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>-k</p>
<p>--killpower</p></td>
<td style="text-align: left;"><p>No parameter</p></td>
<td style="text-align: left;"><p>-k  Remove power previously left on using -zv.</p>
<p>-k is mutually exclusive to -w See also: -a.</p></td>
<td style="text-align: left;"><p>Usage:<br />
<br />
<code class="literal">-k</code> Instructs the programmer to cease providing power to the target<br />
<br />
</p></td>
</tr>
<tr class="odd">
<td style="text-align: left;"><p>-m</p></td>
<td style="text-align: left;"><p>Requires a parameter or parameter(s) string</p></td>
<td style="text-align: left;"><p>-m  Program device.</p>
<p>Full options are:  -mpecs</p>
<p>  memory regions are:</p>
<p>    p  = Program memory</p>
<p>    e = EEPROM</p>
<p>    c = Configuration memory                         </p>
<p>    s = UserIDs</p>
<p>The order in which these flags are specified is not important.</p>
<p>1) Memory regions MUST be specified. If no memory region is specified then the operation will fail.</p>
<p>2) Some chips have constraints on what memory types can be written by themselves. For example, some don’t support writing the config without also writing or erasing the program memory. For such chips, invalid programming attempts will fail with an error message.</p>
<p>3) If a memory region is specified then the memory region IS FIRST ERASED, then programmed.   In other words, -e is implied for the memory region(s) specified.</p>
<p>4) All specified memory regions are automatically verified after programming. There is currently no way to disable this.</p>
<p>To specify an output filename, use -f. This is a positional argument, and must appear BEFORE -m. If omitted, the data will be printed to the terminal instead.</p></td>
<td style="text-align: left;"><p>Usage:<br />
<br />
Example 1. Program all memory regions:<br />
<br />
<code class="literal">-p16lf18855  -w  -zv  -f16lf18855.hex  -mpec</code><br />
<br />
Example 2. Write program memory and config, but preserve EEPROM contents:<br />
<br />
<code class="literal">-p16lf18855  -w  -zv  -f16lf18855.hex  -mcp</code><br />
</p></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>-n</p></td>
<td style="text-align: left;"><p>Requires a PICKit programmer name string as a parameter</p></td>
<td style="text-align: left;"><p>-n  Program the device with the specified name.</p>
<p>Use the PICkit programmer with the given Unit ID string (its so-called "serial").  Useful when multiple PICkit programmers units are connected.</p>
<p>Not particularly useful when multiple programmers have the same ID. (Yes, this is a thing.)</p></td>
<td style="text-align: left;"><p>Usage:<br />
<br />
Example:<br />
<br />
<code class="literal">-p16lf18855 -nBUR12345678 -w -zv -f16lf18855.hex -mcep</code><br />
<br />
Use a specific programmer with the name of BUR12345678.<br />
<br />
</p></td>
</tr>
<tr class="odd">
<td style="text-align: left;"><p>-p</p></td>
<td style="text-align: left;"><p>Requires a chip model name</p></td>
<td style="text-align: left;"><p>-p  Program the device with the specified name.</p>
<p>This argument is mandatory for all chip-related operations (i.e. read, write, erase).</p>
<p>The switch specifies the target chip ("part") to be programmed. The device string needs to match the device being programmed, or the operation will fail.  The device string is used to extract key information from the device database.  An incorrect device string will not work and an error message will be issued.</p>
<p>Specifying an incorrect part name may cause damage to your part. For example, specifying a PIC18F6520 when you have connected the low-voltage PIC18LF6520 will (unless -a is specified) apply 5 volts to the part, potentially damaging it.</p>
<p>You may optionally omit the "PIC" prefix from your part name. For example, -p12F675 and -pPIC12F675 are both valid arguments.</p>
<p>The part name is not case-sensitive.</p></td>
<td style="text-align: left;"><p>Usage:<br />
<br />
Example 1. Program a PIC16LF8855 chip.<br />
<br />
</p>
<p><code class="literal">-p16lf18855  -w -zv -f16lf18855.hex -mcep</code><br />
<br />
</p>
<p>Example 2. Program a 12F675.<br />
<br />
<code class="literal">-pPIC12F675  -w -zv -f12F675 -mcp</code><br />
</p></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>-r</p></td>
<td style="text-align: left;"><p>Requires a parameter</p></td>
<td style="text-align: left;"><p>Implemented as -rnnnn where nnnn is the size of the flash memory block to be protected, and where nnn can be any value within the constaints of NVRAM erase row size. Suggest multiples of 0x20.</p>
<p>Currently the largest block HEF/SAF on any PIC is 0x100 (words) but This could possibly change in the future.</p>
<p>So valid values would be 0x20, 0x60, 0x80 up to 0x100</p></td>
<td style="text-align: left;"><p>Usage:<br />
</p>
<p>Example 1:<br />
<br />
<code class="literal">-r128</code>  This will protect/preserve the last 0x60 (128) words of flash memory. In the Example 1 above, if the microcontroller has 2048 words of Program Flash Memory, range of memory to be preserved would be from 0x780 to 0x7FF.<br />
<br />
</p>
<p>Example 2:<br />
<br />
<code class="literal">-r0xE0</code>  This will preserve the last 0xE0 (224) words of flash memory on a microcontroller with 256 words of SAF memory.<br />
</p></td>
</tr>
<tr class="odd">
<td style="text-align: left;"><p>-q</p></td>
<td style="text-align: left;"> </td>
<td style="text-align: left;"><p>  Set the output to minimal (quiet)</p></td>
<td style="text-align: left;"><p>Usage:<br />
<br />
<code class="literal">-q</code>  The application will issue minimal messages.<br />
</p></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>-s</p></td>
<td style="text-align: left;"><p>Requires a hexadecimal parameter</p></td>
<td style="text-align: left;"><p>-s  sets the UserID value for microcontrollers that support UserID bytes/words.</p>
<p>Supports hexadecimal values only. Supports usage of leading 0x and characters 0xhhhh to the specific length stated in the datasheet.</p>
<p>There are two components to the command. The hexadecimal value and the command switch.</p>
<p>1) Hexadecimal value: -s is a positional value. Therefore, it has no effect until a write operation is performed. You must put -s hexadecimal value prior to the -m switch.</p>
<p>2) You must add the s parameter to the -m command. Example -mpecs</p></td>
<td style="text-align: left;"><p>Usage:<br />
<br />
Example 1.<br />
<br />
Set to the UserId to a hexadecimal value 0x0000000000000001 use the following:<br />
<br />
<code class="literal">-w -p16f1938 -f16f1938.hex -s0x0000000000000001  -mpecs -a5.0 -zv</code></p></td>
</tr>
<tr class="odd">
<td style="text-align: left;"><p>-u</p></td>
<td style="text-align: left;"><p>Requires a hexadecimal parameter</p></td>
<td style="text-align: left;"><p>-u  sets the OSCCAL value on devices with OSCCAL support.</p>
<p>Supports hexadecimal values only. Supports usage of leading 0x and four characters 0xhhhh, or, a four character string hhhh. The hexadecimal value must start with 0x34; the next 6 bits determine the OSCCAL; and the lower two bits must be zero. Essentially, the 6 bits adjust the frequency up or down to achieve 4 MHz.</p>
<p>-u is a positional command. Therefore, it has no effect until a write operation is performed. It must be specified before -m.</p>
<p>Changing the OSCCAL value impacts the operating frequency of the device. YOU MUST ENSURE THE VALUE COMPLIES WITH THE SPECIFICATION AS STATED IN THE DATASHEET. Typical values are similar to 0x343C.</p>
<p>NOTE: The PICKit+2 GUI can regenerate the OSCCAL value for you automatically.</p></td>
<td style="text-align: left;"><p>Usage:<br />
</p>
<p><br />
Example 1. Set to hexadecimal value 343C<br />
</p>
<p><br />
<code class="literal">-w -pPIC12f675   -f12f675.hex -u343c  -mpec -a3.3 -zv</code><br />
<br />
<br />
</p>
<p>Example 2. Set to hexadecimal value 0x3438<br />
<br />
<code class="literal">-w  -pPIC12f675   -f12f675.hex -u3438 -mpec  -a5.0 -zv</code><br />
</p></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>-w</p>
<p>--applypower</p></td>
<td style="text-align: left;"><p>No parameter</p></td>
<td style="text-align: left;"><p>-w Power device from programmer, if safe to do so.</p>
<p>Power will be applied during programming operations. If a specific voltage has not been specified with -a, the default voltage for the selected part will be used.</p>
<p>Before applying power, the software will check if power is already present. If power is found to be present, the software will not attempt to supply more power.</p>
<p>See also: -a, -k</p>
<p><br />
</p>
<p>NOTE: These command line switches operate differently from the original Microchip command line utility.</p>
<p><br />
<br />
</p></td>
<td style="text-align: left;"><p>Usage:<br />
<br />
</p>
<p>-w  Power the device for programming.<br />
Example 1. Enable power to support programming using the default operating voltage.<br />
</p>
<p><br />
<code class="literal">-w -pPIC12f675   -f12f675.hex -u343c -mpec</code><br />
<br />
Example 2. Enable power to support programming using the default operating voltage and continue to apply power after exiting the application.<br />
<br />
<code class="literal">-w -pPIC12f675   -f12f675.hex -u343c -mpec  -zv</code><br />
</p></td>
</tr>
<tr class="odd">
<td style="text-align: left;"><p>-z</p>
<p>--on-exit</p></td>
<td style="text-align: left;"><p>Requires one or more flags</p></td>
<td style="text-align: left;"><p>-z  Keep power and/or MCLR asserted upon exit.</p>
<p>-z Must be used with at least one of the flags V or M. The order of these flags is not important, and they are not case-sensitive.</p>
<p>Specifies state on exit where v=power and m=mclr.</p>
<p>See also: -a</p></td>
<td style="text-align: left;"><p>Usage:<br />
<br />
<code class="literal">-zv</code>      Keep power applied after exit<br />
<code class="literal">-zm</code>     Keep MCLR asserted after exit<br />
<code class="literal">-zvm</code>     Keep both power and MCLR after exit<br />
</p></td>
</tr>
</tbody>
</table>

</div>

  
  
<span class="strong">**Application Errorlevels**</span>  
  

<div class="informaltable">

| Errorlevel | Exit meaning                             |
|:-----------|:-----------------------------------------|
| 0          | Success                                  |
| 1          | "Incorrect Argument"                     |
| 2          | "Power Problem"                          |
| 3          | "Part Not Found"                         |
| 4          | "No Tool Found"                          |
| 5          | "Firmware Problem"                       |
| 6          | "Communication Problem"                  |
| 7          | "File Not Found"                         |
| 8          | "This Feature is Broken"                 |
| 9          | "This Feature is Not Implemented"        |
| 10         | "Not Valid"                              |
| 11         | "Verification Failed"                    |
| 12         | "System Error"                           |
| 13         | "Bad Hex File"                           |
| 14         | "This Operation is Not Supported"        |
| 15         | "This product is unlicensed"             |
| 16         | "Blank Check Failed"                     |
| 17         | "An internal error has occurred"         |
| 18         | "Requested operation is not possible"    |
| 19         | "Product license could not be validated" |
| 20         | "A fatal error has occurred"             |

</div>

  
  
<span class="strong">**Dump file**</span>

In the event of a crash, a dumpfile will be created at `~/.pkcmd.dump`,
and a message displayed to indicate the dumpfile has been created.  
This can be used to diagnose issues and you may be requested to send the
dumpfile to the development team to assist in the root cause analysis of
the issue.  

  
  
<span class="strong">**General Guidelines**</span>

When using this executable a parameter is either a standalone flag or a
key/value pair.

For `-m` and `-g` there is no default. You must specify memory region.

`-w` defaults to the standard operating voltage for the device, unless
`-a` is also used to specify a voltage.

When a PICKit 3 device programmmer is first plugged in to USB the MCLR
is asserted (pin is held low). A PICKit 2 device programmmer does not do
this.

If you need to set or reset the BANDGAP on your device. Please use the
PICKitPlus Windows Application for the PICKit 2 or PICKit 3. This can
reset the BANDGAP with a click. Simply read the device, then select the
'BandGap:' in the upper part of the application interface - this will
change the BandGap value. Select the desired BandGap by reselecting
'BandGap' and then Write or Erase the device.

And…​ quotes can be used around the argument; and it can optionally be
separated from the switch by a space. This is a universal rule.

</div>
