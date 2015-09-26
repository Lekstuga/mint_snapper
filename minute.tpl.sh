. $INSTALL_PATH/config.sh

if [ -z "$IMAGE_PATH" ];
then
    echo "no image path found"
    exit;
fi;

idle_time=`DISPLAY=:0 xprintidle`
if test "$idle_time" -gt 30000
then
    echo `date` idle
else
    echo `date` screenshot
    DISPLAY=:0 scrot $IMAGE_PATH/'mint-%Y-%m-%d_%H-%M-%S.jpg' -q $IMAGE_QUALITY
fi

sleep 30

idle_time=`DISPLAY=:0 xprintidle`
if test "$idle_time" -gt 30000
then
    echo `date` idle
else
    echo `date` screenshot
    DISPLAY=:0 scrot $IMAGE_PATH/'mint-%Y-%m-%d_%H-%M-%S.jpg' -q $IMAGE_QUALITY
fi

