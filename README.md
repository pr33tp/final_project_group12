List of Files (to be run in order):
1.	00_requirement.R - calls our necessary libraries to run our code.
  
2.	00_dataLoadingAndCleaning.Rmd - loads our data and cleans it, removing unnecessary whitespace, newlines, and stop words like "a", "I", "the", etc.
  
3.	01_getWordLengths.R - we take our cleaned up data and split it into words and count them to the number of chars that each word has and apply it into a vector.

4.	02_avgWordLengths.R - takes all the word lengths and takes the mean of all the words and applies them into a vector.

5.	03_graphsAndVisuals.R - summary and a barplot (more plots and analysis to be determined)
