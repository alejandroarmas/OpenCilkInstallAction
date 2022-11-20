#!/bin/bash

SCRIPT_NAME=$1
mkdir /opt/opencilk
sudo ./${SCRIPT_NAME} --skip-license --prefix=/opt/opencilk --exclude-subdir