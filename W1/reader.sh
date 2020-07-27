#!/usr/bin/env bash
for file_name in data/*
do
    echo -n $file_name " : "
    awk -F ' ' '{if ($1 > max) max = $1 } END {print max}' $file_name
done
