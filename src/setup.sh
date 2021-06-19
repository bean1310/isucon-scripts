#!/bin/bash

function initApt ()
{
    ${sudo} apt update && \
    ${sudo} apt install -y git vim curl wget tar
}

function install_myprofiler ()
{
    cd /tmp
    wget https://github.com/KLab/myprofiler/releases/download/0.2/myprofiler.linux_amd64.tar.gz
    tar xf myprofiler.linux_amd64.tar.gz
    mv myprofiler ~/.bin/
}


if [ $(whoami) == "root" ]; then
    isroot=true
else
    isroot=false
fi

if ! ${isroot} ; then
    if which sudo > /dev/null; then
        sudo="sudo"
        echo "sudo installed !!"
    else
        echo "This environment is NON-ROOT user and NOT FOUND sudo"
        echo "Please install softwares mannualy"
        exit
    fi
else
    sudo=""
fi

if which apt-get > /dev/null; then
    echo "Detected apt-get command !!"
    echo "Start installing..."
    initApt
fi

mkdir ${HOME}/.bin
echo "export PATH=${HOME}/.bin:$PATH" > ${HOME}/.bash_profile
export PATH=${HOME}/.bin:$PATH

install_myprofiler

# TODO: Cent OS is not installed "which" command default.
# if which dnf > /dev/null; then
#     echo dnf
# fi
