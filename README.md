# R_functions
Varied stuff of random R functions of my own

**colsel.R** is a function to choose colour (semi-automathic/random) for plots

The inputs for *colsel* are: 
 - **n**: the number of colours you want
 - **palette**: the colour palette from which the colours will be extract. Currently, it supports two different colour paletes: *pastel1* with 14 different colours, and *total*, with 554.
 - **mode**: mode of selection. *ordered* takes the colours in a certain and fixed order from the sources; *random* extracts the colours randomly from the sources

**multi_lm.R** is a function that calculates multiple univariate statistical comparisons. The way it works is simple, it takes your data, the feature that you want to compare, and the comparisons you want to make contained within a contrasts matrix. It outputs those comparisons per feature, and an FDR correction. 

The inputs for *multi_lm* are:
 - **data**: a data frame that contains all your variables
 - **feature**: the main feature for which you want the comparisons
 - **contrasts**: the contrast matrix
