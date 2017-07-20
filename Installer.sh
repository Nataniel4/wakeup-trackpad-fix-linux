#!/bin/sh

FSE="false"
WORKPATH="Source"

cd "$(dirname "$0")"

echo ""
echo "/////// Trackpad Fix Installer ///////"
echo ""
echo "[!] Please run this command as superuser."
echo ""
installer(){
    read -p "Do you have Ubuntu >= 16.04 or equivalent? [Y/N] " OPTION
    if [ $OPTION = "Y" ] || [ $OPTION = 'y' ]
    then
    echo "Installing fix... [Ubuntu 16.04 or equivalent]"
    echo ""
    echo "/////// OUTPUT ///////"
    cp "$WORKPATH/trackpad" "/lib/systemd/system-sleep/trackpad"
    chmod +x "/lib/systemd/system-sleep/trackpad"
    echo "/////// OUTPUT ///////"
    echo ""
    echo "All done! You can test it now!"
    exit
    else
    echo "Installing fix... [Ubuntu 14.04 or equivalent]"
    echo ""
    echo "/////// OUTPUT ///////"
    cp "$WORKPATH/0000trackpad" "/etc/pm/sleep.d/0000trackpad"
    chmod +x "/etc/pm/sleep.d/0000trackpad"
    echo "/////// OUTPUT ///////"
    echo ""
    echo "All done! You can test it now!"
    exit
    fi
}
while [ $FSE = "false" ]
do
if [ -e "$WORKPATH/trackpad" ] && [ -e "$WORKPATH/0000trackpad" ]
then
FSE="true"
installer
else
echo "[ERROR] Source files not found!"
read -p "Please type/drag and drop source folder here: " WORKPATH
echo ""
fi
done
