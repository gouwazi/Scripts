xStatus=`xrandr`
connectedOutputs=$(echo "$xStatus" | grep " connected" | sed -e "s/\([A-Z0-9]\+\) connected.*/\1/")
activeOutput=$(echo "$xStatus" | grep -e " connected [^(]" | sed -e "s/\([A-Z0-9]\+\) connected.*/\1/") 
connected=$(echo $connectedOutputs | wc -w)

if [ $connected -eq 1 ]
then
    echo "1"
    exec="xrandr --output eDP1 --auto"
else
    echo "2"
    exec="xrandr --output eDP1 --off --output DP1 --off --output HDMI1 --off --output HDMI2 --primary --mode 2560x1440 --pos 0x0 --rotate normal --output VIRTUAL1 --off"
fi

`$exec`
