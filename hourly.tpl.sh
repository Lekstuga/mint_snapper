. $INSTALL_PATH/config.sh

if [ -z "$IMAGE_PATH" ];
then
    echo "no image path found"
    exit;
fi;

#interval in seconds
interval=$TIME_INTERVAL
interval=${interval:=30}

# get number of times to run
run_count=$((3600/interval))
i=0
while true
do
    echo "capturing shot $i for current run"
    DISPLAY=:0 scrot $IMAGE_PATH/'mint-%Y-%m-%d_%H-%M-%S.jpg' -q 20
    sleep $interval
    if [[ $i -ge $run_count ]]; then break; fi;
    i=$((i+1))
done
