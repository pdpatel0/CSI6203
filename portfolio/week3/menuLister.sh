#!/bin/bash

#Print menu options.
echo "1. Create a Folder"
echo "2. List files in a folder"
echo "3. Copy a folder"
echo "4. Save a Password"
echo "5. Read a Password"
echo "6. Print Newest file"

#Reads the user input and store in a parameter.
read -p "Please type a number between 1 to 6:" option

#Get the user input as one of the case and show them appropriate case option.
case $option in
    "1" )
        echo "you select option $option"
        #Redirects to the foldermaker file which is in week2.
        ~/CSI6203/portfolio/week2/folderMaker.sh
    ;;
    "2" )
        echo "you select option $option"
        ~/CSI6203/portfolio/week2/folderLister.sh
    ;;
    "3" )
        echo "you select option $option"
        ~/CSI6203/portfolio/week3/foldercopier.sh
    ;;
    "4" )
        echo "you select option $option"
        ~/CSI6203/portfolio/week2/savePassword.sh
    ;;
    "5" )
        echo "you select option $option"
        #Reads from user input
        read -p "Enter the filename to read: " readfile
        #Pass this as argument to the script.
        ~/CSI6203/portfolio/week3/fileReader.sh  $readfile \n
    ;;
    "6" )
        echo "you select option $option"
        #Prompt the user to input the filenames and read as arguments and forward it to the script.
        read -p "Enter the filenames to read: " readarg1 readarg2 readarg3
        ~/CSI6203/portfolio/week3/NewestFilev1.sh $readarg1 $readarg2 $readarg3
    ;;
    *) echo "invalid option";; #print if input is invalid option.
esac #end of the case.





