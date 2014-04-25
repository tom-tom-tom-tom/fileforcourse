fileforcourse
=============

R file

This file is for the cousrea cleaning data cousre

it will load all the records from the samsung data as long as the data is in your working dic

The file uses the scan function to quickly load all the data. 
It is them scrubbed of NAs and convert to a matrix. 
Files that are no longer need are removed to save on memory.

Only the test and train data files has been used. 
All other files seemed to be raw data from the device. 

grep is used (without REGEX) to find only mean and std columns.

The labels for the factors are hard coded as there are only 6. 

Spilt is used to break up the data.frame into subjects. 
then a nested lappy is used to further spilt each spilt by activity and run colMeans on this second level.
The resulting list is then converted to a data.frame. 

rowname of this data.frame are in the form subject.activity
 Lastly we use the row names by removeing the Xs and blanks and place the resulting activity names in a column called active and a subject column is also added.

A file is output called tidy.txt it is bealive to follow the tidy data principles
