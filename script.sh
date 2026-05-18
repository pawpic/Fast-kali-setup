#!/bin/bash

#checking if user is owner of the directory and is root
if [ "$(stat -c '%U' "$1")" == "$USER" ] && [ "$USER" == "root" ]; then
    echo "User is root. Cloning repositories..."
    # Clone the repositories here
    echo "Sharp collections"
    git clone -q https://github.com/Flangvik/SharpCollection "$1/SharpCollection"
    echo "Seclists"
    git clone -q https://github.com/danielmiessler/seclists "$1/seclists"
    echo "Username anarchy"
    git clone -q https://github.com/urbanadventurer/username-anarchy "$1/username-anarchy"
    echo "Eyewitness"
    git clone -q https://github.com/RedSiege/EyeWitness "$1/eyewitness"
    echo "Nishang"
    git clone -q https://github.com/samratashok/nishang "$1/nishang"
    echo "Git-Dumper"
    git clone -q https://github.com/arthaud/git-dumper "$1/git-dumper"
    echo "Kerbrute"
    git clone -q https://github.com/ropnop/kerbrute "$1/kerbrute"
    echo "Installing go-lang and dev version of kerbrute. Also krb5-user"
    apt install golang krb5-user
    cd "$1/kerbrute"
    make linux
fi
