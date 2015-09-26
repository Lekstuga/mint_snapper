. $INSTALL_PATH/config.sh

if [ -z "$IMAGE_PATH" ];
then
    echo "no image path found"
    exit;
fi;

date
DISPLAY=:0 scrot $IMAGE_PATH/'mint-%Y-%m-%d_%H-%M-%S.jpg' -q $IMAGE_QUALITY
sleep 30

date
DISPLAY=:0 scrot $IMAGE_PATH/'mint-%Y-%m-%d_%H-%M-%S.jpg' -q $IMAGE_QUALITY
