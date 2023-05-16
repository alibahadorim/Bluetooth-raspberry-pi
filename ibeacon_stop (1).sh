export BLUETOOTH_DEVICE=hci0
echo "Disabling iBeacon..."
sudo hciconfig $BLUETOOTH_DEVICE noleadv
echo "Disable Complete"