#!/bin/bash

clear
read -p "Please enter a number between 1 - 10:  " number
#Check if number is odd or even
left_over=$((number % 2))
if [ "$left_over" -ne "0" ] #number is odd
then
echo "$number"

    #add user if does not already exist
    while true
    do
    read -p "Do you want to add a user? Y/N >> " answer
        case $answer in
            [Yy]* )
            read -p "Please enter a username:  " username
            #Check if user already exists.
            checkname=$(grep -c "$username" /etc/passwd) 
                
            if [ "$checkname" -eq "1" ]
            then
            echo "User $username already exists."
            else
            sudo useradd "$username"
            echo "User $username added as new user."
            fi
            ;;
            
            [Nn]* )
            exit
            ;;
        esac
    done

else #number is even
read -p "Please enter a group name: " group_name
read -p "Please enter a new user name for group $group_name: " new_group_user
sudo groupadd $group_name
sudo useradd $new_group_user
sudo usermod -aG $group_name $new_group_user
echo "Added $new_group_user to $group_name."
num_users=$(cat /etc/passwd | wc -l)
num_groups=$(cat /etc/group | wc -l)
echo "There are now $num_users users, and $num_groups groups. Have a nice day."
fi

