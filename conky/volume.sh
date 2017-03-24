#!/bin/bash
mute=`amixer get Master | grep "Left:" | awk '{print $6}'`
if [[ $mute == '[on]' ]]
then
	truth=True
fi

if [[ $truth ]]
then
	echo "\${color 4aa02c}"
else
	echo "\${color e55b3c}"
fi
