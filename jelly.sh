# Nightly jellybean building script
#
# for benjamingwynn's jellybean marvel builds.

if [ "$1" = -g ] || [ "$2" = -g ] || [ "$3" = -g ] || [ "$4" = -g ] || [ "$5" = -g ] || [ "$6" = -g ]
  then
     clear
     echo "Updating from github..."
     echo ""
     echo "Updating script..."
     echo "============================== 00% =============================="
     rm -rf ~/jellygit
     echo "============================== 10% =============================="
     rm -rf ~/jelly
     echo "============================== 20% =============================="
     git clone git://github.com/benjamingwynn/jelly.git jellygit
     echo "============================== 30% =============================="
     cp ~/jellygit/jelly.sh ~/jelly.sh
     echo "============================== 40% =============================="
     echo "============================== 50% =============================="
     chmod a+x ~/jelly.sh
     echo "============================== 60% =============================="
     echo "============================== 70% =============================="
     ln -s ~/jelly.sh ~/jelly
     echo "============================== 80% =============================="
     echo "============================== 90% =============================="
     clear
     echo "============================= DONE! ============================="
     exit
fi

if [ "$1" = "-?" ]
  then
     clear
     echo "jelly | A simple CM compiling script"
     echo "Created by Benjamin Gwynn"
     echo " "
     echo "Usage: ./jelly [device] [type] [flags]"
     echo " "
     echo "Flags:"
     echo ""
     echo "-u        Upload to goo.im      "
     echo "-d        Make dirty            "
     echo "-g        Update from github    "
     echo "-l        Log the compie        "
     echo "-fu       Force upload          "
     echo "-nc       No compile            "
     echo "-ns       No sync               "
     echo "-badass   Build with -0               "
     echo ""
     echo "Types:"
     echo ""
     echo "user"
     echo "userdebug"
     echo "eng"
     echo ""
     echo ""
     exit
fi

if [ "$1" = "" ]
  then
     echo "FATAL: No device flag given, stopping."
     echo " "
     echo "For usage, type -?"
     exit
fi

if [ "$2" = "" ]
  then
     echo "FATAL: No type flag given, stopping."
     echo " "
     echo "For usage, type -?"
     exit
fi

#- ...otherwise, carry on.
echo "Jellybean Nightly build script"
echo " "
echo "Navigate to folder"
cd cm-jb
if [ "$3" = -ns ] || [ "$4" = -ns ] || [ "$5" = -ns ] || [ "$6" = -ns ]; then
	echo "Not syncing"
else
	echo "Syncing..."
	repo sync
fi
echo "Working..."
source build/envsetup.sh
export USE_CCACHE=1
cd ~/cm-jb
if [ "$3" = -nc ] || [ "$4" = -nc ] || [ "$5" = -nc ] || [ "$6" = -nc ]; then
	echo "Not compiling"
	else
 	 if [ "$3" = -d ] || [ "$4" = -d ] || [ "$5" = -d ] || [ "$6" = -d ]
 	  then
 	       echo "Making dirty..."
  	  else
 	       echo "Cleaning..."
 	       make clean
 	       make clobber
	        rm -rf out
	  fi
	echo "Compiling..."
	if [ "$3" = -l ] || [ "$4" = -l ] || [ "$5" = -l ] || [ "$6" = -l ]
	  then
 	    echo "Compile for the $1..."
 	    lunch cm_$1-$2
 	    echo "Logging compile to file"
  	   logfile=~/buildlog$RANDOM
 	    make -j8 bacon > $logfile
	     echo "Info: Saved at ~/$logfile"
	  else
 	    echo "Compile for the $1..."
 	    lunch cm_$1-$2
  	   echo "Not logging compile"
		if [ "$3" = -badass ] || [ "$4" = -badass ] || [ "$5" = -badass ] || [ "$6" = -basass ]
		then
    			realmake -j bacon
		else
			make -j8 bacon
		fi
	fi
fi

echo "Setting dates..."
date1="$(date +%Y%m%d)"
date2="$(date +%d-%m-%Y)"

if [ "$3" = -fu ] || [ "$4" = -fu ] || [ "$5" = -fu ] || [ "$6" = -fu ]
then
rm $date2
fi

if [ "$3" = -u ] || [ "$4" = -u ] || [ "$5" = -u ] || [ "$6" = -u ] || [ "$3" = -fu ] || [ "$4" = -fu ] || [ "$5" = -fu ] || [ "$6" = -fu ]
then
    if [ -f $date2 ]
          then
            echo ". "
            echo ".. "
            echo "... "
            echo ".... "
            echo " "
            echo "Notice: Refusing to upload. CM10 has already been uploaded today."
            exit
    fi
  touch $date2
  echo "Uploading to Goo.im..."
  chmod 644 out/target/product/$1/"cm-10-"$date1"-UNOFFICIAL-"$1".zip"
  scp -P 2222 out/target/product/$1/"cm-10-"$date1"-UNOFFICIAL-"$1".zip" benjamingwynn@upload.goo.im:public_html/$1/CyanogenMod10/"CyanogenMod10-benjamingwynn-"$date1".zip"
  echo ". "
  echo ".. "
  echo "... "
  echo ".... "
  echo " "
  echo "Notice: Uploaded to http://goo.im/devs/benjamingwynn/$1/CyanogenMod10"
else
  echo ". "
  echo ".. "
  echo "... "
  echo ".... "
fi
echo " "
