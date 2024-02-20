#!/bin/env bash

Options() {
    echo "Choose an option:"
    echo "1. Register."
    echo "2. View records."
    echo "3. Delete a record."
    echo "4. Update record."
    echo "5. Exit."
}

how_it_works() {
    read -p "Enter option: " option
    case $option in
        1) echo "Enter Student email, Age, and StudentID (in this same format):"
           read credentials
           echo "$credentials" >> students-list_1023.txt ;;
        2) echo "The Bachelor of Software Engineering cohort list of students:"
           awk '{print NR, $0}' students-list_1023.txt ;;
        3) echo "Write ID of the record to delete:"
           read id
           sed -i "/$id/d" students-list_1023.txt ;;
        4) echo "What is the Student ID of the record to change:"
           read s1
           echo "Input the new credentials (all of them):"
           read s2
           sed -i "/$s1/c\ $s2" students-list_1023.txt ;;
        5) exit ;;
    esac
}

main() {
    while true; do
        Options
        how_it_works
    done
}
main
