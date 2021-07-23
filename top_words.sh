#!/bin/bash
#Ask name of the file
echo Hello! Welcome to the Top 10 words tool!!
echo Please provide the name of the data file to read
#Read the input
read file

#Verify if the file exist, if not the program exit
if [ ! -e "$file" ];then
echo "No file was found with the name:" $file
echo "Please try again with the correct filename"
exit
else

#Ask name for output file
echo Please provide the name for the output csv file
read outputF

#Verify that it's not blank
if [ -z $outputF ];then
echo "Output file can't be blank"
echo "Please insert a correct name"
exit
else

#Work with the file taking data segment, converting one word per line, removing common words as 'the,in,etc', removing blank lines and sorting and appliying uniq sentences

`cat $file|awk -F '|' '{print $5}'|tr -c '[:alnum:]' '[\n*]'| fgrep -v -w -f /usr/share/groff/current/eign|awk 'NF'|sort | uniq -c | sort -nr |head -10>$outputF`

#Progress bar
echo -ne '#####                     (35%)\r'
sleep 1
echo -ne '#############             (70%)\r'
sleep 1
echo -ne '#######################   (100%)\r'
echo -ne 'Task Completed: '$outputF' file has been generated'
echo -ne '\n'
fi
fi
