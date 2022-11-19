#!/bin/bash
VERSION='v2.0'
kernelName="$(uname -s)"
PLATFORM='x86_64'
OPENCILK_DOWNLOAD_PREFIX="https://github.com/OpenCilk/opencilk-project/releases/download/opencilk"

case "$kernelName" in
    Darwin*)
        OS="Apple-Darwin"
        ;;
    Linux*)
        OS="Linux-Ubuntu-22.04"
        ;;
esac

URL=${OPENCILK_DOWNLOAD_PREFIX}/${VERSION}/OpenCilk-2.0.0-${PLATFORM}-${OS}.sh

curl -fsSL ${URL} -o opencilk_install.sh

if [[ $? != 0 ]]; then
    echo "Failed to download OpenCilk Shell Archive: ${URL}"
    exit 1
fi

chmod +x opencilk_install.sh
sudo ./opencilk_install.sh
rm ./opencilk_install.sh
