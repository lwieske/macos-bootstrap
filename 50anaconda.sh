#!/usr/bin/env bash

rm -rf ${INSTALL_FILE} ${INSTALL_FOLDER} ~/.conda

INSTALL_FILE=Anaconda3-2019.07-MacOSX-x86_64.sh
INSTALL_FOLDER=/Users/lothar/Applications/anaconda3

wget -q https://repo.continuum.io/archive/${INSTALL_FILE}
mkdir -p ~/{Applications,.conda}
sh ${INSTALL_FILE} -b -p ${INSTALL_FOLDER}
rm ${INSTALL_FILE}