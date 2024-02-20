#!/bin/env bash
sed -n 's/\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]\{2,\}\b/&/gp' Students-list_1023.txt | sort | awk '{print NR, $0}' > student-emails.txt
