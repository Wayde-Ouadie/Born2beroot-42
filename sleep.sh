#!/bin/bash
MIN=$(uptime -s | cut -d ":" -f 2)
SEC=$(uptime -s | cut -d ":" -f 3)
DELAY=$(bc <<< $MIN%10*60+$SEC)
sleep $DELAY
