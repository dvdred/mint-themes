#!/bin/bash
VER=$(nmcli --version | awk '{print $4}' | cut -d "." -f 1) ; [[ "$VER" -lt "1" ]] && ( nmcli dev list | grep DNS | awk '{ print $2}' ) || ( nmcli dev show | grep DNS | awk '{ print $2}' )
