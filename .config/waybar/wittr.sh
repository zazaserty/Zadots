#!/usr/bin/sh
req=$(curl -s wttr.in/?format="%t|%l+(%c%f)+%h,+%C")
bar=$(echo $req | awk -F "|" '{print $1}')
tooltip=$(echo $req | awk -F "|" '{print $2}')
echo "{\"text\":\"$bar\", \"tooltip\":\"$tooltip\"}"
