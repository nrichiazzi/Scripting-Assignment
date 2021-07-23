#README FIRST TO USER

########## PRE-REQUISITES ##########
Install following libraries:
pip install pandas
pip install wikipedia

########## IMPLEMENTATION ##########

A ) CREATION OF RANDOM TEST LOG DATA
1 - Run first script: python main.py
      
2 - The script will create a document called "demofile2.txt" with all random log data following the first point of the requirement.

B ) CREATE A GRAPH WITH PREVIOUS LOG DATA

1 - Run second script: ./Statistics.sh
2 - The script will ask for the input file (in this case, demofile2.txt) and the output file:

      (base) nico@Nico-Ubuntu:~/Documentos/Homework$ ./Statistics.sh 
      Hello, please provide the name of the file to read
      demofile2.txt
      Please provide the name for the output csv file
      report.csv

3 - After putting the information required the report will be generated and a message informing the completion will be shown:

      #####                     (35%)
      #############             (70%)
      #######################   (100%)
      Task Completed: report.csv file has been generated

4 - After importing the data to excel the graph will be generated. 

C ) Create the top 10 used words list

1 - Run the third script: ./top_words.sh

2 - The script will ask for the input file (in this case, demofile2.txt) and the output file:

      (base) nico@Nico-Ubuntu:~/Documentos/Homework$ ./top_words.sh 
      Hello! Welcome to the Top 10 words tool!!
      Please provide the name of the data file to read
      demofile2.txt
      Please provide the name for the output csv file
      TopWordsUsed.txt
     
3 - After putting the information required the report will be generated and a message informing the completion will be shown:

      Task Completed: TopWordsUsed.txt file has been generated
      
4 - A list of top 10 used words will be created as the following:

      (base) nico@Nico-Ubuntu:~/Documentos/Homework$ cat TopWordsUsed.txt 
        12306 Amazon
        10903 S3
         3200 objects
         2973 storage
         2467 data
         2159 service
         1906 object
         1788 billion
         1670 AWS
         1645 services
     
