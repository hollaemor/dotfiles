#! /bin/bash

bluetoothctl power on; bluetoothctl $1 $2
echo -e "{\"class\": \"$1\"}"
