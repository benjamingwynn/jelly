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
- Phone and any other mobile connection is broken (wifi and bluetooth work) [FIXING]
- Widgets on the launcher are too big, and hang off the bottom and into the dock
- Google now doesn't work
- Settings force closes when you click on storage [FIXED IN NEXT BUILD]
- Audio doesn't play through headphones
- Video playback doesn't work
- USB mounting doesn't work [FIXED IN NEXT BUILD]
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

- https://github.com/benjamingwynn/cm_marvel_jellybean_port
- https://github.com/benjamingwynn/cm_vendor_htc_marvel
- https://github.com/benjamingwynn/cm_device_htc_marvel-common
- https://github.com/benjamingwynn/cm_device_htc_marvel
- https://github.com/benjamingwynn/cm_vendor_qcom_msm7x27
- https://github.com/benjamingwynn/android_bionic
- https://github.com/benjamingwynn/cm_device_htc_marvelc
- https://github.com/benjamingwynn/twrp_device_htc_msm7x27-recovery
- https://github.com/benjamingwynn/android_hardware_ril
- https://github.com/benjamingwynn/android_hardware_qcom_audio **disused**
- https://github.com/benjamingwynn/cm_kernel_htc_msm7227 **disused**
- https://github.com/benjamingwynn/android_hardware_qcom_display **disused**
- https://github.com/benjamingwynn/cm_device_htc_msm7x27-common **disused**
- https://github.com/benjamingwynn/android_frameworks_base **disused**