#!/bin/bash
mkdir /opt/opencilk
chmod +x opencilk_install.sh
sudo ./opencilk_install.sh --skip-license --prefix=/opt/opencilk --exclude-subdir
rm ./opencilk_install.sh
