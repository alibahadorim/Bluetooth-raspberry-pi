#all values must be in hexadecimal form separated by spaces between every two hex digits
export BLUETOOTH_DEVICE=hci0
# use your own UUID
export UUID="e2 c5 6d b5 df fb 48 d2 b0 60 d0 f5 a7 10 96 e0"
#put whatever major & minor numbers you need to separate this device from another
export MAJOR="00 01"
export MINOR="00 08"
# power level for a Pi
export POWER="c5"
echo "Starting iBeacon..."
sudo hciconfig hci0 up
sudo hciconfig hci0 noleadv
sudo hciconfig hci0 leadv 0
sudo hcitool -i hci0 cmd 0x08 0x0008 1e 02 01 1a 1a ff 4c 00 02 15 $UUID $MAJOR $MINOR $POWER 00
echo "iBeacon Start Complete"
