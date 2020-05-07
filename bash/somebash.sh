#!/usr/bin/env bash
set -e 

value="
$1
$2
three"

for (( i=0; i<${#value[@]}; i++ ))
do
    echo "${value[$i]}" >> $3
done