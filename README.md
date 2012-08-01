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

- Doesn't complete boot, audio issue. 

How to build
==============================

- Set up your build enviroment
- Use the local_manifest.xml is this repo (add it to the .repo folder) 
- Run this command: "repo sync; source build/envsetup.sh; lunch cm_marvel-eng; export USE_CCACHE=1"
- Do the build command: "make -jx bacon"

Todo
==============================

- Update marvelc's repo
- Gather known bugs for this ROM
- Add finished nightly script
