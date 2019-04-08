#!/bin/sh
UID=$(id -u ${USER})
GID=$(id -g ${USER})

REALPATH="$(realpath $0)"
BASEDIR="$(dirname ${REALPATH})"

BASEDIR_SRC="$(realpath ${BASEDIR}/..)"

mkdir -p "${BASEDIR_REGISTRY}"

docker run -v /dev/shm:/dev/shm \
           -v ${BASEDIR_SRC}:/home/${USER}/src \
           -e USERNAME_TO_RUN=${USER} \
           -e USERNAME_TO_RUN_GID=${GID} \
           -e USERNAME_TO_RUN_UID=${UID} \
           -it \
           --rm \
           spherojs:latest /bin/bash
