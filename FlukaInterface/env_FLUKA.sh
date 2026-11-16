#! /bin/bash

export FLUKA_PATH=$(realpath $(dirname $(which fluka))/..)
if [ ! -d "$FLUKA_PATH" ]; then
   echo "!!! fluka not found. FLUKA_REPO=$FLUKA_PATH. Add your fluka_repo/bin to the PATH. !!!";
fi

export FLUKADATA=$FLUKA_PATH/data
if [ ! -d "$FLUKADATA" ]; then
   echo "!!! fluka data repo not found. FLUKADATA=$FLUKADATA. Add your fluka_repo/bin to the PATH. !!!";
fi

export FLUKA_LIB_DIR=$FLUKA_PATH/lib
if [ ! -d "$FLUKA_LIB_DIR" ]; then
   echo "!!! fluka lib repo not found. FLUKA_LIB_DIR=$FLUKA_LIB_DIR. Add your fluka_repo/bin to the PATH. !!!";
fi
