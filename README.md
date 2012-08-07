Cyanogenmod 10 for the HTC MARVEL\C
==============================

The source code you here is Jellybean source for the HTC MARVEL or MARVELC.

Credits
==============================

- helicopter88 (working with to fix bugs)
- modpunk (original CM9 base)
- alquez (original CM7 base)
- drosete (helping modpunk)
- munjeni (helping to fix audio)
- goo.im (hosting & buildbox)
- lgics (kanged some fixes from them)
- jbminiproject (kanged some fixes from them)

Known bugs
==============================

- Any bugs that CM9 has
- Phone and any other mobile connection is broken (wifi and bluetooth work)
- Widgets on the launcher are too big, and hang off the bottom and into the dock
- Google now doesn't work
- Audio doesn't play through headphones
- Video playback doesn't work
- Microphone doesn't work (in theory, this is also why Google Now doesn't)
- Camera doesn't work (that's why the app hides from the drawer)
- Some very minor graphic errors, such as the notification drawer being slow.

How to build
==============================

- Set up your build enviroment
- Use the local_manifest.xml is this repo (add it to the .repo folder) 
- Run this command: "repo sync; source build/envsetup.sh; lunch cm_marvel-eng; export USE_CCACHE=1"
- Do the build command: "make -jx bacon"

Repos that are for this project
===============================

The following repos are based for this project:

- https://github.com/benjamingwynn/android_bionic ................... Adds Armv6 patch ................
- https://github.com/benjamingwynn/android_external_srec ............ Fixes compiling errors ..........
- https://github.com/benjamingwynn/android_hardware_ril ............. Lowers RIL minimum version ...... *will be removed*
- https://github.com/benjamingwynn/android_hardware_qcom_media ...... Fixes qcom media ................
- https://github.com/benjamingwynn/android_hardware_msm7k ........... Fixes msm7k stuff ...............
- https://github.com/benjamingwynn/cm_device_htc_marvel-common ...... Common device tree ..............
- https://github.com/benjamingwynn/cm_device_htc_marvel ............. Marvel device tree ..............
- https://github.com/benjamingwynn/cm_device_htc_marvelc ............ Marvelc device tree ............. *outdated*
- https://github.com/benjamingwynn/cm_marvel_jellybean_port ......... Other project files .............
- https://github.com/benjamingwynn/cm_vendor_htc_marvel ............. Marvel/c vendor .................
- https://github.com/benjamingwynn/cm_vendor_qcom_msm7x27 ........... Qcom vendor ..................... 
- https://github.com/benjamingwynn/twrp_device_htc_msm7x27-recovery . Recovery tree ...................
- https://github.com/benjamingwynn/android_frameworks_base .......... Fixing frameworks ............... **deprecated**
- https://github.com/benjamingwynn/android_hardware_qcom_audio ...... Fix audio bugs .................. **deprecated**
- https://github.com/benjamingwynn/android_hardware_qcom_display .... Fix display compiling errors .... **deprecated**
- https://github.com/benjamingwynn/android_packages_apps_Launcher2 .. Fix launcher widgets ............ **deprecated**
- https://github.com/benjamingwynn/cm_kernel_htc_msm7227 ............ Kernel tree ..................... **deprecated**
- https://github.com/benjamingwynn/cm_device_htc_msm7x27-common ..... Common MSM7x27 tree ............. **deprecated**
