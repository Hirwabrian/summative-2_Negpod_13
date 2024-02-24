#!/bin/bash

sed -n 's/.*\b\([A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]\{2,\}\)\b.*/\1/p' students-list_1023.txt | sort | awk '{print NR, $0}' > student-emails.txt


