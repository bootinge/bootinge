#!/bin/bash
for i in `adb shell pm list packages -f | grep /data/ | grep -v "kakao" | grep -v "astro" | grep -v "google" | awk -F'=' '{print $2}'`
do
	echo $i
done
