#!/bin/sh
#INIT INFO
# Provides:          wifi
# Required-Start:    $network
# Default-Start:     2 3 4 5
# Short-Description: Start WiFi connection
### END INIT INFO

echo "[wifi] Starting Wi-Fi connection..."

IFACE=wlu1u4i2
CONF=/etc/wpa.conf
LOG=/var/log/wifi.log

# Bring up interface
ip link set $IFACE up

# Run wpa_supplicant in background
wpa_supplicant -B -i $IFACE -c $CONF -D nl80211

# Wait for connection
sleep 3

# Get IP
udhcpc -i $IFACE