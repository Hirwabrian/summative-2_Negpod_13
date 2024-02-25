#!/bin/bash

sed -n 's/.*\b\([A-Za-z0-9._%+-]+@gmail\.com\)\b.*/\1/p' students-list_1023.txt > student-emails.txt
