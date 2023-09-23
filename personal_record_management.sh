#!/bin/bash


add_record() {
    echo "Adding a new record"
}


edit_record() {
    echo "Editing an existing record"

}


search_records() {
    echo "Searching for records"
    
}


generate_reports() {
    echo "Generating reports..."

}

# Main menu
while true; do
    echo "Personal Record Management System"
    echo "1. Add New Record"
    echo "2. Edit Existing Record"
    echo "3. Search Records"
    echo "4. Generate Reports"
    echo "5. Exit"
    read -rp "Enter your choice: " choice

    case $choice in
        1)
            add_record
            ;;
        2)
            edit_record
            ;;
        3)
            search_records
            ;;
        4)
            generate_reports
            ;;
        5)
            echo "Exiting the program."
            exit
            ;;
        *)
            echo "Invalid choice. Please select a valid option."
            ;;
    esac
done
