if [ -z "$INSTALL_PATH" ];
then
    echo "no install path found"
    exit;
fi;

if [[ `which scrot` && `which xprintidle` ]];
then
    echo "prerequisites already met."
else
    echo "installing prerequisites"
    apt-get install -y xprintidle
    apt-get install -y scrot
fi
echo "installing scripts"
mkdir -p $INSTALL_PATH
rm $INSTALL_PATH/*
cp ./* $INSTALL_PATH/
