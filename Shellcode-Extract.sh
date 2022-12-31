#!/bin/bash
if [ -z "$1" ]
then
echo "Use: $0 <Path Code>"
exit
fi
objdump -d $1|grep '[0-9a-f]:'|grep -v 'file'|cut -f2 -d:|cut -f1-6 -d ' '|tr -s ' '|tr '\t' ' '|sed 's/$//g'|sed 's/ /\\x/g'|paste -d '' -s|sed 's/^/"/'|sed 's/$/"/g'
