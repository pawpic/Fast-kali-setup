#!/bin/bash

#checking if user is owner of the directory or is root
if [ "$(stat -c '%U' "$1")" == "$USER" ] || [ "$USER" == "root" ]; then
    echo "User is the owner of the directory or is root. Cloning repositories..."
    # Clone the repositories here
    git clone -q https://github.com/Flangvik/SharpCollection "$1/SharpCollection"
    git clone -q https://github.com/danielmiessler/seclists "$1/seclists"
    git clone -q https://github.com/urbanadventurer/username-anarchy "$1/username-anarchy"
    git clone -q https://github.com/RedSiege/EyeWitness "$1/eyewitness"
    git clone -q https://github.com/samratashok/nishang "$1/nishang"
    git clone -q https://github.com/samratashok/nishang "$1/nishang"
    git clone -q https://github.com/arthaud/git-dumper "$1/git-dumper"
    # Add more repositories in next commits
fi
