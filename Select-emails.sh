#!/bin/bash

sed 's/\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]\{2,\}\b/&/g' students-list_1023.txt | sort | awk '{print NR, $0}' > student-emails.txt
