#! /bin/bash

# A script to start the file server.
# Copyright (c) 2022 nlfmt

# To install this script on your system, run the following command:
#     ln -s /path/to/this/script/serve.sh /usr/local/bin/serve

# Usage: serve [path] [port]
# Examples:
# serve . 8000
# serve C:\Users\nlfmt\Desktop\


SCRIPT_PATH="${BASH_SOURCE}"
while [ -L "${SCRIPT_PATH}" ]; do
  SCRIPT_DIR="$(cd -P "$(dirname "${SCRIPT_PATH}")" >/dev/null 2>&1 && pwd)"
  SCRIPT_PATH="$(readlink "${SCRIPT_PATH}")"
  [[ ${SCRIPT_PATH} != /* ]] && SCRIPT_PATH="${SCRIPT_DIR}/${SCRIPT_PATH}"
done
SCRIPT_DIR="$(cd -P "$(dirname -- "${SCRIPT_PATH}")" >/dev/null 2>&1 && pwd)"


node "${SCRIPT_DIR}/../main.js" $1 $2
