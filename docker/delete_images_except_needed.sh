#!/usr/bin/env bash
volumes=$(docker volume ls | awk '{print $2}')
arr=()
for i in $volumes; do
     arr+=("$i")
    done

for v in ${arr[@]};do
case "$v" in  
*"tmp_var"*) 
    echo "i will skip this volume $v" 
    ;;
*"tmp_var1"*)
    echo "i will skip this volume $v" 
    ;;
*)  
    echo "deleted volume $v"
    docker volume rm -f $v || exit 1
    ;;
esac
    done
