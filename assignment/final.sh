#!/bin/bash

#function for website is working or not
function url()
{
		if [[ `wget -S --spider http://apod.nasa.gov/apod/  2>&1 | grep 'HTTP/1.1 200 OK'` ]];
			then
				echo "Connecting to nasa.gov... "
		else
				echo 'Machine unable to connect Nasa website to process further'
				exit 1
		fi
}




#function for checking arguments
function argu()
{

for ((j=0; j <= ${#argin[@]}; j++))
	do
    case "${argin[$j]}" in   
    --range) 
    minrange="${argin[$j + 1]}" 
    maxrange="${argin[$j + 2]}"     
    ;;
    *)  ;;
    esac
done
}


#function to validate and process the data accorrding to available arguments
function process()
{
		if [ "$type" == "details" ]; then
			title=$(wget --quiet http://apod.nasa.gov/apod/ap$imagedate.html  -O - | grep -m 1 '<b>'  | sed -e 's/<b>//' -e 's/<\/b>//' -e 's/.*=//' -e 's/<br>//' -e 's/ //g' -e 's/\///g' -e 's/$/.jpg/')
			echo "Connected to nasa.gov getting data"
			echo "-----------------------------------------------------------------------";
			echo "TITLE: $title"
			description=$(wget --quiet http://apod.nasa.gov/apod/ap$imagedate.html  -O - |sed -n '/<b> Explanation: <\/b>/,/<p> <center>/p'  | sed -e :a -e 's/<[^>]*>//g;/</N;//ba' | grep -Ev 'Explanation:' | tr '\n' ' ' | sed 's/  /\n\n/g' | awk 'NF { print $0 "\n" }' | sed 's/^[ \t]*//' | sed 's/[ \t]*$//')
			echo -e "\n"	
			echo "EXPLANATION: $description"
			credit=$(wget --quiet http://apod.nasa.gov/apod/ap$imagedate.html  -O - |sed -n '/Image Credit/,/ Explanation:/p'  | sed -e 's/<\/a>//g' -e 's/<b>//'  -e 's/<\/b>//'  -e 's/<br>//'  -e 's/<br>//' -e '/center/d' -e '/Explanation/d' | sed -e 's/<a.*">//1' | sed -e 's/<a.*">//g' |sed ':a;N;$!ba;s/\n/ /g' |sed -e 's/<a.*>//g')
			echo -e "\n"			
			echo $credit
			echo -e "\n"
	
	
		elif [ "$type" == "explanation" ]; then
			description=$(wget --quiet http://apod.nasa.gov/apod/ap$imagedate.html  -O - |sed -n '/<b> Explanation: <\/b>/,/<p> <center>/p'  | sed -e :a -e 's/<[^>]*>//g;/</N;//ba' | grep -Ev 'Explanation:' | tr '\n' ' ' | sed 's/  /\n\n/g' | awk 'NF { print $0 "\n" }' | sed 's/^[ \t]*//' | sed 's/[ \t]*$//')
			echo "Connected to nasa.gov getting data"
			echo "-----------------------------------------------------------------------"
			echo "EXPLANATION: $description"
			echo -e "\n"
		else
			title=$(wget --quiet http://apod.nasa.gov/apod/ap$imagedate.html  -O - |grep -m 1 '<b>'  | sed -e 's/<b>//' -e 's/<\/b>//' -e 's/.*=//' -e 's/<br>//' -e 's/ //g' -e 's/\///g' -e 's/$/.jpg/')
			imagetitle=$(wget --quiet http://apod.nasa.gov/apod/ap$imagedate.html  -O - |grep -m 1 '<b>'  | sed -e 's/<b>//' -e 's/<\/b>//' -e 's/.*=//' -e 's/<br>//' -e 's/ //g' -e 's/\///g' -e 's/$/.jpg/')    
				
			echo "Connected to nasa.gov getting data"			
			echo "-----------------------------------------------------------------------";
			echo "Downloading \"$title\""
			picurl=$(wget --quiet http://apod.nasa.gov/apod/ap$imagedate.html  -O - |grep -m 1 jpg  | sed -e 's/<//' -e 's/>//' -e 's/.*=//' -e 's/"//g' -e 's/^/http:\/\/apod.nasa.gov\/apod\//' )
				
			wget --quiet $picurl -O  $imagetitle
		fi	
}
#function to get data in a sequential form of provides dates
function range()
{
	echo "Connected to nasa.gov getting data"
	echo "-----------------------------------------------------------------------";
 	minrange=$(date -d "$minrange")
    maxrange=$(date -d "$maxrange ")    
    while [ "$maxrange" != "$minrange" ]
    do        
		minrange=$(date -d "$minrange +1 day")
       	imagedate=$(date -d "$minrange" +'%y%m%d')
		process "$imagedate"
	done
}

#main function begins
#getting arguments
argin=($@)

while getopts ":t:d:f:" option; do
  	case $option in
  	d)
   		date=$OPTARG
  	;;
  	t)
   		type=$OPTARG
  	;;
  	f)
   		fileName=$OPTARG
   	;; 
  	esac
done

#calling function
argu


#calling website checking function
url
#if statement is used only if date is provided in argument
if [[ $date != '' ]];then
	if ! $(date -d "$date" >/dev/null 2>&1); then
   		echo "Not a valie date"
	fi
	imagedate=$(echo $date | sed 's/^..//;s/[\._-]//g' )
	#calling process function
	process "$imagedate"

elif [[ $minrange != '' ]];then
   #calling sequential date fectching function
   range "$imagedate"

fi
echo "Finished"
