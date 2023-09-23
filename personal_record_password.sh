#!/bin/bash

generate_password() {
    local length="$1"
    tr -dc 'A-Za-z0-9!@#$%^&*()_-+=<>?' < /dev/urandom | head -c "$length"
}

# Prompt the user for the desired password length
read -p "Enter the desired password length (default is 8): " password_length

# Use 8 as the default password length if no length is provided
if [ -z "$password_length" ]; then
    password_length=8
fi

# Generate and display the random password
password=$(generate_password "$password_length")
echo "Generated password: $password"
