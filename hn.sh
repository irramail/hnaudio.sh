#!/bin/bash
while :;
do

rm -Rf ./newest
wget https://news.ycombinator.com/newest 2>/dev/null

grep titlelink newest | sed "s/^.*titlelink..rel..nofollow..//g" | sed "s/<.*$//g" | head -c 1000 | head --lines=-2 | while read -r text; do
#echo ${#text} | head -c 1
test ${#text} -lt 4 && continue
DISPLAY=:0.0 xdotool mousemove --sync 885 225
#sleep 1
DISPLAY=:0.0 xdotool click --delay 250 1
sleep 1
DISPLAY=:0.0 xdotool key --delay 250 End
DISPLAY=:0.0 xdotool mousemove --sync 400 822
DISPLAY=:0.0 xdotool click --delay 250 1

DISPLAY=:0.0 xsel -c
echo "<speak><audio src=\"https://ждуавтобус.рф/wp-content/uploads/pics/beep.mp3\">no</audio> $text </speak>" | DISPLAY=:0.0 xsel -ib

DISPLAY=:0.0 xdotool key --delay 250 ctrl+v

#sleep 1

DISPLAY=:0.0 xdotool mousemove --sync 350 700
#sleep 1
DISPLAY=:0.0 xdotool click --delay 250 1
#sleep 1
DISPLAY=:0.0 xdotool key --delay 250 End
sleep 1
#DISPLAY=:0.0 xdotool mousemove --sync 450 900
#DISPLAY=:0.0 xdotool mousemove --sync 1000 690
#sleep 1
#DISPLAY=:0.0 xdotool mousemove --sync 1000 730
#sleep 1
#DISPLAY=:0.0 xdotool mousemove --sync 1000 770
#sleep 1
DISPLAY=:0.0 xdotool mousemove --sync 1000 810
#sleep 1
DISPLAY=:0.0 xdotool click --delay 250 1
sleep 2
sleep `echo ${#text} | head -c 1`
DISPLAY=:0.0 xdotool key --delay 250 ctrl+r
sleep 1
DISPLAY=:0.0 xdotool mousemove --sync 930 550
#sleep 1
DISPLAY=:0.0 xdotool click --delay 250 1
sleep 5
done

sleep 1
done
