class11
================

\#Q1: Download a CSV file from the PDB site (accessible from “Analyze”
-\> “PDB Statistics” \#“by Experimental Method and Molecular Type”. Move
this CSV file into your RStudio project \#and determine the percentage
of structures solved by X-Ray and Electron Microscopy. Also can \#you
determine what proportion of structures are protein

``` r
data<-read.csv("Data Export Summary.csv")
```

``` r
total<-sum(data$Total)
total
```

    ## [1] 157530

``` r
data$Total
```

    ## [1] 140299  12815   3961    303    152

``` r
ans <- data$Total/sum(data$Total) * 100
names(ans) <- data$Experimental.Method
round(ans,2)
```

    ##               X-Ray                 NMR Electron Microscopy 
    ##               89.06                8.13                2.51 
    ##               Other        Multi Method 
    ##                0.19                0.10

``` r
round(sum(data$Proteins)/sum(data$Total) * 100, 2)
```

    ## [1] 92.71

\`\`\`
