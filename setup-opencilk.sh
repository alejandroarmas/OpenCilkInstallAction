#!/bin/bash
mkdir /opt/opencilk
sudo ./opencilk_install.sh --skip-license --prefix=/opt/opencilk --exclude-subdir
chmod +x opencilk_install.sh