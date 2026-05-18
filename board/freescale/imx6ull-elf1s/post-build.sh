#!/bin/sh
mkdir -p "$TARGET_DIR/etc/systemd/system/multi-user.target.wants"
ln -sf ../wifi.service $TARGET_DIR/etc/systemd/system/multi-user.target.wants/wifi.service