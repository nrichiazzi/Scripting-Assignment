#!/bin/bash
#Ask name of the file
echo Hello, please provide the name of the file to read

#Read the input file

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

#Work in the file taking the segment needed , removing seconds, selecting unique and adding comma separetor for proper csv file creation

`cat $file | awk -F '|' '{print $4,$2}'|cut -d: -f1,2|uniq -c|awk '{OFS=",";}{print $3,$2,$1;}'>$outputF`

#Progress bar
echo -ne '#####                     (35%)\r'
sleep 1
echo -ne '#############             (70%)\r'
sleep 1
echo -ne '#######################   (100%)\r'
sleep 1
echo -ne 'Task Completed: '$outputF' file has been generated'
echo -ne '\n'

fi
fi
