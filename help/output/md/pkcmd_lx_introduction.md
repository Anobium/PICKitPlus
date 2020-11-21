<div class="section">

<div class="titlepage">

<div>

<div>

### <span id="pkcmd_lx_introduction"></span>PKCMD-LX Introduction

</div>

</div>

</div>

The PICKitPlus for Linux commandline program is called PKCMD-LX.

The program can be used for reading and writing Microchip’s PIC range of
microcontrollers, using the Pickit 2 or Pickit 3 device programmers.

<span class="strong">**Program Definition**</span>

PKCMD-LX is a 32-bit or 64-bit command-line interface to the PICkit 2 or
PICkit 3 device programmer.

This interface is designed for programming devices in an environment
where batch/script files or custom-controlled software is desired.

The PKCMD-LX executable requires the "PKPlusDeviceFile.dat" file for
execution. This file should be kept in the same directory as the
executable AppImage.  

<div class="note" style="margin-left: 0.5in; margin-right: 0.5in;">

### Note

To call the PKCMD-LX executable from other directories and still allow
it to find the device file the device file may be explicitly specified
on the command line using option -b (-B).

</div>

PKCMD-LX is a commandline-only solution. Refer to the "PICkit 2 User’s
Guide" or "PICkit 3 User’s Guide" for more information about the
specifics of the PICkit 2/3 device Programmer.

<span class="strong">**Device Support List**</span>

Device support is dependent on the device file version installed with
the PKCMD-LX. See
<a href="http://www.PICKitPlus.co.uk/Typesetter/index.php/Supported-Parts" class="link">the PICKitPlus web site</a>
for an up-to-date list of supported devices.

When selecting a part using the `-P` option (see
<a href="pkcmd_lx_usage" class="link" title="PKCMD-LX Usage">PKCMD-LX Usage</a>),
you can use the full name or short name.

<div class="note" style="margin-left: 0.5in; margin-right: 0.5in;">

### Note

`-P 16f690` is the same as `-P PIC16F690`

</div>

  
  

<span class="strong">**System Requirements**</span>

PKCMD-LX has been tested on a number of 32-bit and 64-bit Linux distros.
It should work on all flavours, within specified limits:

<div class="orderedlist">

1.  Requires `libc` v2.13 or above. This is linked to the distribution,
    and is typically out of your control. If your libc version is too
    low, often your only recourse is to install a newer distro.
2.  Requires root (or sudo), at least until it is fully installed and
    configured.
3.  Requires `fuse` (i.e. the `fusermount` command), if you want to run
    PKCMD-LX without root privileges.
4.  Expects `libfuse` v2.9.0 or greater, although older versions may
    work. For example, v2.8.5 prints warning messages but does seem to
    function.
5.  If you have a limited or evaluation license, you will need internet
    access to use the program. Full licenses do not have this
    limitation.

</div>

  
  

<span class="strong">**Supported Linux Distributions**</span>

Distributions known to have a compatible version of libc include:

<div class="itemizedlist">

-   Arch 2011.08.19
-   CentOS 7.8.2003 (released in 2020)
-   Debian 7 (Wheezy)
-   Fedora 15 (Lovelock)
-   Gentoo 11.2
-   Mint 11 (Katya)
-   openSUSE 12.1
-   Slackware 13.37
-   Ubuntu 11.04 (Natty)

</div>

Distributions that do not use libc (such as Abyss, Alpine, Sabotage,
Vanilla and Void) will not run PKCMD-LX.

A compatibility-test program is available free of charge on our website.
Potential users can download and run that, to see if the full product is
compatible with their system.

  
  

<span class="strong">**Installation**</span>

Installation is fairly straightforward.

<div class="orderedlist">

1.  Download the .tar.gz using the link provided.
2.  Unpack the .tar.gz file. It contains two AppImages: one 32-bit, the
    other 64-bit.
3.  Move the appropriate AppImage for your PC architecture, along with
    the provided DAT file, to whatever location you wish.
4.  You may then delete the .tar.gz file and any extraneous files you do
    not require.
5.  Ensure that the AppImage has the executable permission (using
    `chmod +x /path/to/appimage`)
6.  Execute the AppImage with whatever parameters you desire. Use `-h`
    for help.

</div>

See also:
<a href="pkcmd_lx_usage" class="link" title="PKCMD-LX Usage">PKCMD-LX Usage</a>

  

<div class="note" style="margin-left: 0.5in; margin-right: 0.5in;">

### Note

You must be root, or use sudo.  You can set up non-root access by
running the program (as root) with the `--configure-no-root`
instruction. This instruction takes an optional username and/or
groupname argument. Examples:

</div>

<div class="itemizedlist">

-   --configure-no-root
-   --configure-no-root someuser
-   --configure-no-root someuser:somegroup
-   --configure-no-root :somegroup

</div>

If in doubt, simply give it your username (to give you access) or the
`:users` group (to give all users access).

  
  

<span class="strong">**AppImage**</span>

PKCMD-LX is distributed as an AppImage.   Using an AppImage enables the
development team to provide native binaries for Linux users the same way
we do for other operating systems.   An AppImage enables the development
team to package the PKCMD-LX application for common Linux operating
systems, e.g., Ubuntu, Debian, openSUSE, RHEL, CentOS, Fedora etc.  

The PICKitPlus AppImage comes with all dependencies that cannot be
assumed to be part of each target system in a recent enough version and
will run on most Linux distributions without further modifications.    

Almost all major distributions are compatible with AppImages, without
requiring the user to make modifications to the base system.   AppImages
are portable. You can place the AppImage on a USB flash drive and run it
from there, on any machine, if you wish.    
  
To summarise:  AppImages provide an easy and unified user experience
that is simple to install and use.

  
  

</div>
