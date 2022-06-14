#! /bin/bash

# Copyright (c) 2022 nlfmt

# A script to start the file server.
# This requires you to have node installed and to have installed all modules.
# If you want to use this program without any of that, use the prebuilt binaries. (https://github.com/nlfmt/local-file-server/releases)

# To install this script on your system, run the following commands:
#     chmod +x serve.sh
#     ln -s /path/to/this/script/serve.sh /usr/local/bin/serve

# Usage: serve [path] [port]
# Examples:
# serve . 8000
# serve C:\Users\nlfmt\Desktop\


# resolve original script path from links
SCRIPT_PATH="${BASH_SOURCE}"
while [ -L "${SCRIPT_PATH}" ]; do
  SCRIPT_DIR="$(cd -P "$(dirname "${SCRIPT_PATH}")" >/dev/null 2>&1 && pwd)"
  SCRIPT_PATH="$(readlink "${SCRIPT_PATH}")"
  [[ ${SCRIPT_PATH} != /* ]] && SCRIPT_PATH="${SCRIPT_DIR}/${SCRIPT_PATH}"
done
SCRIPT_DIR="$(cd -P "$(dirname -- "${SCRIPT_PATH}")" >/dev/null 2>&1 && pwd)"


node "${SCRIPT_DIR}/../main.js" $1 $2
