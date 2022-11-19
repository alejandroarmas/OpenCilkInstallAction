#!/bin/bash
mkdir /opt/opencilk
chmod +x opencilk_install.sh
sudo ./opencilk_install.sh --skip-license --prefix=/opt/opencilk --exclude-subdir
rm ./opencilk_install.sh
# sudo add-apt-repository ppa:ubuntu-toolchain-r/test # Ignore if not ubuntu
# sudo apt-get update
# sudo apt-get upgrade
# sudo apt-get dist-upgrade
# sudo apt-get install gcc-4.9
# sudo apt-get install --only-upgrade libstdc++6-dev
LD_LIBRARY_PATH=/opt/opencilk:$LD_LIBRARY_PATH

