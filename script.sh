#!/bin/bash
#checking if user is owner of the directory or is root
if [ "$(stat -c '%U' "$1")" == "$USER" ] || [ "$USER" == "root" ]; then
    echo "User is the owner of the directory or is root. Cloning repositories..."
    # Clone the repositories here
    git clone -q https://github.com/Flangvik/SharpCollection "$1/SharpCollection"
    git clone -q https://github.com/danielmiessler/seclists "$1/seclists"
    git clone -q https://github.com/urbanadventurer/username-anarchy "$1/username-anarchy"
    # Add more repositories as needed
    echo "done"
fi
