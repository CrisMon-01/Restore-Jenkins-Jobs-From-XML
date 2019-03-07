#!/bin/bash

for job in *.xml
do
    ansible-vault view $job > config.xml
    NOME="$(basename $job .xml)"
    URL=https://urlserver2/createItem?name=$NOME
    curl -s -k -XPOST $URL -u user:accesstoken --data-binary @config.xml -H "Content-Type:text/xml"
    rm config.xml
done
