Cyanogenmod 10 for the HTC Wildfire S
==============================

Jellybean device tree(s) for the HTC Wildfire S

Credits
==============================

- helicopter88 (working with me to fix bugs)
- modpunk (original CM9 base & patches)
- alquez (original CM7 base)
- drosete (helping modpunk)
- goo.im (hosting & buildbox)
- lgics (kanged some fixes from them)
- jbminiproject (kanged some fixes from them)

Known bugs
==============================

- Phone and any other mobile connection is broken (wifi and bluetooth work)
- Video playback doesn't work
- Sound can be buggy
- Microphone doesn't work (in theory, this is also why Google Now doesn't)
- Camera doesn't work (that's why the app hides from the drawer)
- Some very minor graphic errors, such as the notification drawer being slow.

How to build
==============================

- Set up your build enviroment
- Use the following repo: repo init -u git://github.com/TeamICS/manifest_ics_cm.git -b jellybean
- Use the patches in the "jelly" script
- Run this command: "repo sync; source build/envsetup.sh; lunch cm_marvel-eng; export USE_CCACHE=1"
- Do the build command: "make -jx bacon"
(where x is CPU cores x2)

Repos that are for this project
===============================

The following repos are based for this project:

- https://github.com/benjamingwynn/cm_device_htc_marvel-common ...... Common device tree ..............
- https://github.com/benjamingwynn/cm_device_htc_marvel ............. Marvel device tree ..............
- https://github.com/benjamingwynn/cm_device_htc_marvelc ............ Marvelc device tree .............
- https://github.com/benjamingwynn/cm_marvel_jellybean_port ......... Other project files .............
- https://github.com/benjamingwynn/cm_vendor_htc_marvel ............. Marvel/c vendor .................
- https://github.com/benjamingwynn/cm_vendor_qcom_msm7x27 ........... Qcom vendor ..................... 
- https://github.com/benjamingwynn/twrp_device_htc_msm7x27-recovery . Recovery tree ...................
