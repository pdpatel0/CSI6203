#Prompt user to take standard input of folder name.
read -p "type the name of the folder you would like to create:" folderName
#create a directory upon user standard input
mkdir "$folderName"
#Prompt user to take standard input for password.
read -s -p "Please enter your secret password:" password
#Reads the secret password and move it to newly created file (secret.txt)
echo $password > $folderName/secret.txt
#Output for testing purpose only.
echo -e "the secret password is: $password"