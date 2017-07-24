#!/bin/bash

initFile="/init.d/init.sh"


if [ ! -f "$initFile" ]; then
  echo "not init file"
else
  echo "run $initFile"
  source $initFile
fi
