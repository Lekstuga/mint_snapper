source config.sh

#echo "creating hourly.sh file"
#cat ./hourly.tpl.sh | sed s,\$INSTALL_PATH,$INSTALL_PATH,  > ./hourly.sh

echo "creating minute.sh file"
cat ./minute.tpl.sh | sed s,\$INSTALL_PATH,$INSTALL_PATH,  > ./minute.sh

echo "creating sudo_install.sh file"
cat ./sudo_install.tpl.sh | sed s,\$INSTALL_PATH,$INSTALL_PATH, > ./sudo_install.sh

chmod 755 *.sh
gksu --message "Installation of Prerequisites and Scripts" ./sudo_install.sh

echo "creating image path: $IMAGE_PATH"
mkdir -p $IMAGE_PATH

echo "creating log path: $LOG_PATH"
mkdir -p $LOG_PATH

cron_entry="*  *    * * *   $INSTALL_PATH/minute.sh >> $LOG_PATH/run.log 2>&1"

if [ $(crontab -l | grep $INSTALL_PATH | wc -l) -gt 0 ];
then
    echo "cron is already installed."
else
    echo "installing cron"
    (crontab -l; echo "$cron_entry") | crontab -
fi

echo "install complete"


