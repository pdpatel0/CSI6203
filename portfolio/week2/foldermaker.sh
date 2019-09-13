# Prompt to user for standard input.
read -p "type the name of the folder you would like to create:" folderName
# According to standard input create a new folder.
mkdir "$folderName"