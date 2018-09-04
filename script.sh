#!/bin/bash

for i in *.xml
do
    ansible-vault view $i > config.xml
    NOME="$(basename $i .xml)"
    URL=https://urlserver2/createItem?name=$NOME
    curl -s -k -XPOST $URL -u user:accesstoken --data-binary @config.xml -H "Content-Type:text/xml"
    rm config.xml
done
