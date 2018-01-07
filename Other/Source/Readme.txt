The base application's source code is available from the portable app's
homepage listed in the help.html file (if applicable).

Details of most other things are available there as well.

LICENSE
=======

This package's installer and launcher are released under the GPL. The launcher
is the PortableApps.com Launcher, available with full source and documentation
from http://portableapps.com/development. We request that developers using the
PortableApps.com Launcher please leave this directory intact and unchanged.

USER CONFIGURATION
==================

Some configuration in the PortableApps.com Launcher can be overridden by the
user in an INI file next to TotalCommanderPortable.exe called TotalCommanderPortable.ini.
If you are happy with the default options, it is not necessary, though.  There
is an example INI included with this package to get you started.  To use it,
copy AppNamePortable.ini from this directory to TotalCommanderPortable.ini next to
TotalCommanderPortable.exe. The options in the INI file are as follows:

Section [TotalCommanderPortable]

   AdditionalParameters=
   DisableSplashScreen=false
   RunLocally=false

The AdditionalParameters entry allows you to pass additional command-line
parameters to the application.

The DisableSplashScreen entry allows you to run the launcher without the splash
screen showing up.  The default is false.

The RunLocally entry allows you to run the portable application from a read-
only medium. This is known as Live mode. It copies what it needs to to a
temporary directory on the host computer, runs the application, and then
deletes it afterwards, leaving nothing behind. This can be useful for running
the application from a CD or if you work on a computer that may have spyware or
viruses and you'd like to keep your device set to read-only. As a consequence
of this technique, any changes you make during the Live mode session aren't
saved back to your device.  The default is false.

Section [Editor]

   restore_default=false
   AkelPadPortable=false
   GeanyPortable=false
   gVimPortable=false
   Notepad++Portable=false
   Notepad2Portable=false
   Notepad2-modPortable=false
   
The restore_default entry allows you to restore the editor to the Total Commander default one.
  The default is false.

All other entries (AkelPadPortable, GeanyPortable, gVimPortable, Notepad++Portable,
Notepad2Portable, Notepad2-modPortable)* allows you to use one** of them as default editor (F4).
*Please note that you must have it previously installed in the same directory as TotalCommanderPortable
**Please note that ONLY one can be set to true.  The default is false.

Section [ExtViewer]

   restore_default=false
   AkelPadPortable=false
   GeanyPortable=false
   gVimPortable=false
   Notepad++Portable=false
   Notepad2Portable=false
   Notepad2-modPortable=false
   
The restore_default entry allows you to restore the external viewer to the Total Commander default one.
  The default is false.

All other entries (AkelPadPortable, GeanyPortable, gVimPortable, Notepad++Portable,
Notepad2Portable, Notepad2-modPortable)* allows you to use one** of them as external viewer.
*Please note that you must have it previously installed in the same directory as TotalCommanderPortable
**Please note that ONLY one can be set to true.  The default is false.

There may be other values also permitted in the user configuration file by the
portable application; refer to help.html for any details of them.
