#!/bin/bash
while true; do # make a loop and break when
    #print the List of Menus with the color formating
    echo ""
    echo -e "\e[5m\e[41m\e[4m\e[1m***Welcome to Mega Menu***\033[0m "
    echo -e "\e[39m1. \e[31mCreate a Folder\033[0m"
    echo -e "\e[39m2. \e[32mList files in a folder\033[0m"
    echo -e "\e[39m3. \e[33mCopy a folder\033[0m"
    echo -e "\e[39m4. \e[34mSave a Password\033[0m"
    echo -e "\e[39m5. \e[35mRead a Password\033[0m"
    echo -e "\e[39m6. \e[36mPrint Newest file\033[0m"
    echo -e "\e[39m7. \e[37mCalculator\033[0m"
    echo -e "\e[39m8. \e[93mMegaFolder Maker\033[0m"
    echo -e "\e[39m9. \e[94mLoop\033[0m"
    echo -e "\e[39m10. \e[95mCheck Filenames\033[0m"
    echo -e "\e[39m11. \e[96mInternet Downloader\033[0m"
    echo ""
    echo -e "\e[7mType exit(to terminate the program)\e[27m"
    echo ""
    
    
    #reads the user input if its exit it exits the program
    read -p $'\e[35m\e[1mType any number to proceed :\033[0m' option
    if [ $option == "exit" ]; then
        echo -e "\e[5m\e[32m\e[4m\e[1mExiting program\033[0m"
        break
        # exit 1
        
    else
        case $option in # check if input is the matching the case (is similar to ifthenelse but has more elif statements)
            "1" ) #check if the user input it 1 then executes folder maker script
                echo -e "\e[31mYou've choosen option $option\033[0m"
                ~/CSI6203/portfolio/week2/folderMaker.sh # the location of the script
            ;;
            "2" ) #check if the user input it 2 then executes folder Lister script
                echo -e "\e[32mYou've choosen option $option\033[0m"
                ~/CSI6203/portfolio/week2/folderLister.sh
            ;;
            "3" ) #check if the user input it 3 then executes folder copier script
                echo -e "\e[33mYou've choosen option $option\033[0m"
                ~/CSI6203/portfolio/week3/foldercopier.sh
            ;;
            "4" ) #check if the user input it 4 then executes folder save password script
                echo -e "\e[34mYou've choosen option $option\033[0m"
                ~/CSI6203/portfolio/week2/savePassword.sh
            ;;
            "5" ) #check if the user input it 5 then executes file reader script
                echo -e "\e[35mYou've choosen option $option\033[0m"
                read -p "Enter the filename to read: " readfile
                ~/CSI6203/portfolio/week3/fileReader.sh  $readfile \n
            ;;
            "6" ) #check if the user input it 6 then executes new file script
                echo -e "\e[36mYou've choosen option $option\033[0m"
                read -p "Enter the filenames to read: " readarg1 readarg2 readarg3
                ~/CSI6203/portfolio/week3/NewestFilev1.sh $readarg1 $readarg2 $readarg3
            ;;
            "7" ) #check if the user input it 7 then executes calculator script
                echo -e "\e[37mYou've choosen option $option\033[0m"
                read -p "Enter the Calculator num1 operator num2: " readarg4 readarg5 readarg6
                ~/CSI6203/portfolio/week4/Calculator.sh $readarg4 $readarg5 $readarg6
            ;;
            "8" ) #check if the user input it 8 then executes mega folder maker script
                echo -e "\e[93You've choosen option $option\033[0m"
                read -p "Enter File Number from and to: " readarg7 readarg8
                ~/CSI6203/portfolio/week4/megafoldermaker.sh $readarg7 $readarg8
            ;;
            "9" ) #check if the user input it 9 then executes loop script
                echo -e "\e[94mYou've choosen option $option\033[0m"
                ~/CSI6203/portfolio/week5/Loop.sh
            ;;
            "10" ) #check if the user input it 10 then executes filenames loop script
                echo -e "\e[95mYou've choosen option $option\033[0m"
                read -p "Enter File name to loop: " readarg9
                ~/CSI6203/portfolio/week5/filenames.sh $readarg9
            ;;
            "11" ) #check if the user input it 11 then executes internet downloader script
                echo -e "\e[96mYou've choosen option $option\033[0m"
                ~/CSI6203/portfolio/week5/InternetDownloader.sh
            ;;
            
            
            *) echo -e "\e[41minvalid option\033[0m";; #if not a valid option
        esac #End of the case
    fi #End of the if statement
done #End of the while loop



