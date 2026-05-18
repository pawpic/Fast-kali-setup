#!/bin/bash

#checking if user is owner of the directory and is root
if [ "$(stat -c '%U' "$1")" == "$USER" ] || [ "$USER" == "root" ]; then
    echo "User is root. Cloning repositories..."
    # Clone the repositories here
    echo "Cloning Sharp collections"
    git clone -q https://github.com/Flangvik/SharpCollection "$1/SharpCollection"
    echo "Cloning Seclists"
    git clone -q https://github.com/danielmiessler/seclists "$1/seclists"
    echo "Cloning Username anarchy"
    git clone -q https://github.com/urbanadventurer/username-anarchy "$1/username-anarchy"
    echo "Cloning Eyewitness"
    git clone -q https://github.com/RedSiege/EyeWitness "$1/eyewitness"
    echo "Cloning Nishang"
    git clone -q https://github.com/samratashok/nishang "$1/nishang"
    echo "Cloning Git-Dumper"
    git clone -q https://github.com/arthaud/git-dumper "$1/git-dumper"
    echo "Cloning Kerbrute"
    git clone -q https://github.com/ropnop/kerbrute "$1/kerbrute"
    echo "Installing go-lang and dev version of kerbrute. Also krb5-user"
    apt install golang krb5-user 2>/dev/null
    cd "$1/kerbrute"
    make linux
fi
