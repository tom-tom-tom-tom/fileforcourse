fileforcourse
=============

R file

This file is for the cousrea cleaning data cousre

it will load all the records from the samsung data as long as its in your working dic

The file use the scan function to quick load all the data. 
It is them scrubbed of NAs and convert to a matrix. 
Files that are no longer need are removed to save on memory.

Only the test and train data has been used. 
All other files seemed to be RAW data files. 

grep is used (without REGEX) to find only mean and std columns.

The labels for the factors are hard coded as there are only 6. 

Spilt is used to break up the data.frame into subjects. 
we then us a nest lappy to further spilt each spilt by activity and run colMeans on this second level spilt.
The resulting list is then converted to a data.frame. 

rowname of this data.frame are in the form subjected.activity
 Lastly we take the row names remove the Xs and blanks and place in an active column with data.frame and we add a subject column.
