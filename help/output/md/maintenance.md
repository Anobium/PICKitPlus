<div class="section">

<div class="titlepage">

<div>

<div>

<span id="maintenance"></span>Maintenance
------------------------------------------

</div>

</div>

</div>

<span class="strong">**Introduction:**</span>

These insights apply to both PKCMD (Windows) and PKCMD-LX (Linux).

  

<span class="strong">**Solution Architecture:**</span>

These components are key for a complete solution:

<div class="orderedlist">

1.  Archive: `.rar` (Windows) or `.tar.gz` (Linux)
2.  AppImage (Linux)
3.  PKPlusDeviceFile.dat file
4.  ini file (Windows)

</div>

  
  
<span class="emphasis">*Archive file*</span>

PKCMD (Windows) comes as a RAR file containing an installer. To install,
first extract the installer and then run it.

PKCMD-LX (Linux) comes as a .tar.gz file. To update PKCMD-LX, replace
your current AppImage and DAT files with the new ones from the archive.
Then, ensure that the AppImage has the executable permission (using
`chmod +x /path/to/appimage`)

  
  

<span class="emphasis">*AppImage*</span>

The PKCMD-LX `.tar.gz` file contains two AppImages - one for 32-bit, the
other for 64-bit. You should use the appropriate AppImage for your
operating system.

If you are unsure about your system’s bittedness, execute `uname -a`
from a terminal. If the output contains "x86\_64", then you are 64-bit.
If, on the other hand, you find something like "i686", then you’re
running 32-bit.

If all else fails, try running one of the AppImages (after giving it the
executable permission with `chmod`). If you get an error about it not
being a valid executable, then it’s the wrong one.

  
  
<span class="emphasis">*PKPlusDeviceFile.dat file*</span>

To update just the DAT file, simply replace your existing file with the
new one.

The DAT file must be located alongside your PKCMD exe (Windows) or
PKCMD-LX AppImage (Linux).

  
  
<span class="emphasis">*ini Files*</span>

PKCMD (Windows) has an `.ini` file, which you may modify if desired.

PKCMD-LX (Linux) does not currently use a configuration file of any
sort.

  
  
<span class="strong">**Software Updates**</span>

We provide one year of software support/maintenance from the date of
purchase, this support/maintenance can be extended each year for an
additional fee.  

During your support period, you may occasionally receive an email with
information to update the software via your user specific download URL.
You may choose to update, or not, entirely at your own discretion.  

<span class="strong">**PKPlusDeviceFile Updates**</span>

We also provide updates to the PKPlusDeviceFile.dat file.  

You will occasionally receive an email with information to update the
DAT file via your user specific download URL.  

</div>
