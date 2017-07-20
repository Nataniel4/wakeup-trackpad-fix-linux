#!/bin/sh

FSE="false"

cd "$(dirname "$0")"

echo ""
echo "/////// Trackpad Fix Uninstaller ///////"
echo ""
echo "[!] Please run this command as superuser."
echo ""
echo "Unstalling fix..."
echo ""
echo "/////// OUTPUT ///////"
if [ -e "/etc/pm/sleep.d/0000trackpad" ]
then
rm "/etc/pm/sleep.d/0000trackpad"
FSE="true"
fi
if [ -e "/lib/systemd/system-sleep/trackpad" ]
then
rm "/lib/systemd/system-sleep/trackpad"
FSE="true"
fi
echo "/////// OUTPUT ///////"
echo ""
if [ $FSE = "false" ]
then
echo "The fix does not appear to be installed, so, no changes made."
else
echo "All done!"
fi
echo ""
exit
