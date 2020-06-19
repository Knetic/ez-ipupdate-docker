#!/bin/bash

desiredIP=$(curl -sS 'https://ipecho.net/plain')
echo "using ipaddr '${desiredIP}'"

function refresh
{
        domain=$1
        docker run -it --rm --net=host -v "/etc/ez-ipupdate/${domain}.conf:/etc/ez-ipupdate/default.conf:ro" ez-ipupdate /usr/sbin/ez-ipupdate -f -c "/etc/ez-ipupdate/default.conf" -a "${desiredIP}"
}

# refresh "mydomain.invalid"