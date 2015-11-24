#!/bin/bash
echo "hitting url: $@"
i=$1
shift
x=$1
echo "COUNT: $i"
echo "URL: $x"
j=0
while [ "$j" -lt $i ]
do
        j=`expr $j + 1`
	curl -s --tlsv1.2 $x &>/dev/null
done
