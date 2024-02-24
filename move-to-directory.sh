#!/usr/bin/env bash

script_dir="$(cd "$(dirname "$0}")" && pwd)"
mkdir -p $script_dir/negpod_13-q1
files=("Main.sh" "students-list_1023.txt" "student-emails.txt" "Select-emails.sh")
for file in "${files[@]}";
do
        mv "/summative-2_Negpod_13/$file" "$script_dir/negpod_13-q1"
done
