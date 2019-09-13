#!/bin/bash

echo "1. Create a Folder"
echo "2. List files in a folder"
echo "3. Copy a folder"
echo "4. Save a Password"
echo "5. Read a Password"
echo "6. Print Newest file"


read -p "Type a number between 1 to 6:" option

case $option in
    "1" )
        echo "you select option $option"
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
        read -p "Enter the filename to read: " readfile
        ~/CSI6203/portfolio/week3/fileReader.sh  $readfile \n
    ;;
    "6" )
        echo "you select option $option"
        read -p "Enter the filenames to read: " arg1 arg2 arg3
        ~/CSI6203/portfolio/week3/conditionalScript2.sh $arg1 $arg2 $arg3
    ;;
    *) echo "invalid option";;
esac




