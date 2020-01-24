#!/bin/bash

set -e

MY_BIRTHDAY="1999-06-11"
TODAY=$(date "+%Y-%m-%d")

function main()
{
    local msg=""
    if [[ "${MY_BIRTHDAY:5:5}" -eq "${TODAY:5:5}" ]]; then
        msg="Happy birthday ${USER}"
    else
        msg="Sorry ${USER}, ${TODAY} is not your birthday :("
    fi

    echo "${msg}"
}

main
