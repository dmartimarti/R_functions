# R_functions
Varied stuff of random R functions of my own

**colsel.R** is a function to choose colour (semi-automathic/random) for plots

The inputs for colsel are: 
 - **n**: the number of colours you want
 - **palette**: the colour palette from which the colours will be extract. Currently, it supports two different colour paletes: *pastel1* with 14 different colours, and *total*, with 554.
 - **mode**: mode of selection. *ordered* takes the colours in a certain and fixed order from the sources; *random* extracts the colours randomly from the sources
