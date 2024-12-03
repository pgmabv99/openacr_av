#!/bin/bash
#
# function to backup /restore during acr

restore_backup_tmp() {
    cp /tmp/$targ/* cpp/$targ/
}

trap '{
    echo -e "\n\033[1;31mERROR: Script exited due to an error!\033[0m";
    # restore the driver cpp
    echo "restore the driver cpp"
    restore_backup_tmp
}' ERR

echo "save  the $targ.cpp. "
mkdir -p /tmp/$targ
rm -rf /tmp/$targ/*
cp cpp/$targ/* /tmp/$targ/
