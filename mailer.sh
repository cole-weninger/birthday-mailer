#!/bin/bash

set -e

TODAY=$(date "+%Y-%m-%d")
BIRTHDAYS="${PWD}/birthdays.conf"

function main()
{
    for birthday in $(cat ${BIRTHDAYS} | grep '[1-2][0-9][0-9][0-9]-[0-2][0-9]-[0-3][0-9]' ); do

        local msg
        local age
        local date
        local name
        local email

        date=$( echo "${birthday}" | cut -d ',' -f1)
        name=$( echo "${birthday}" | cut -d ',' -f2)
        email=$( echo "${birthday}" | cut -d ',' -f3)

        if [[ "${date:5:5}" == "${TODAY:5:5}" ]]; then
            age=$((${TODAY:0:4} - ${date:0:4}))

            msg="Happy birthday ${name}! Can't believe you're already turning ${age}!
            This message was generated by the Birthday Alert System"

            echo "${msg}" | mail -s "Happy birthday ${name}!" "${email}"
        fi

    done

}

main
