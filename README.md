# MintSnapper

Screenshot Capture similar to Timesnapper, without GUI, for Linux Mint.

### Install

Open Terminal and Type Below commands:

    git clone https://github.com/svamja/mint_snapper
    # (optional) vi config.sh (see section on Configuration)
    cd mint_snapper
    ./install.sh

This will prompt you for a password. Please provide your password.
If this throws any error, then you may have to use an administrative account.

Wait for about a minute. The screenshots will start coming in [User Home]/mint_snapper folder.

### Configuration

Below can be changed before installation, right after git clone

* $INSTALL_PATH
* $LOG_PATH

Below can be changed after installation, edit the config.sh file at the installation path.

* $IMAGE_PATH
* $IMAGE_QUALITY (1 to 100)

### Uninstall

* Edit crontab file and remove the line with $INSTALL_PATH/minute.sh

    `crontab -e`

* (optional) Remove installation directory and its content
* (optional) Remove $LOG_PATH/run.log file

