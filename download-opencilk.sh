#!/bin/bash
VERSION=$1
kernelName="$(uname -s)"
PLATFORM=$2
OPENCILK_DOWNLOAD_PREFIX="https://github.com/OpenCilk/opencilk-project/releases/download/opencilk"
SCRIPT_NAME=$3

case "$kernelName" in
    Darwin*)
        OS="Apple-Darwin"
        ;;
    Linux*)
        OS="Linux-Ubuntu-22.04"
        ;;
esac

URL=${OPENCILK_DOWNLOAD_PREFIX}/${VERSION}/OpenCilk-2.0.0-${PLATFORM}-${OS}.sh

curl -fsSL ${URL} -o ${SCRIPT_NAME}

if [[ $? != 0 ]]; then
    echo "Failed to download OpenCilk Shell Archive: ${URL}"
    exit 1
fi

chmod +x ${SCRIPT_NAME}