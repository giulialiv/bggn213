class07
================
Giulia Livrizzi
10/23/2019

``` r
source("http://tinyurl.com/rescale-R")
```

``` r
rescale(1:10)
```

    ##  [1] 0.0000000 0.1111111 0.2222222 0.3333333 0.4444444 0.5555556 0.6666667
    ##  [8] 0.7777778 0.8888889 1.0000000

\#understand the stop function which is built in our code. It allows you
to give a more specific comment if an error occurs.

# “\!” will flip something in true/false

\#We want to write a function, called both\_na(), that counts how many
positions in two input vectors, x and y, both have a missing value.
start with a simple definition of x and y. You can use & (means and) to
check at the same time 2 variables.

``` r
x<- c (1,2,NA, 3,NA)
y<-c( NA,3,NA,3,4)

is.na(x) & is.na(y)
```

    ## [1] FALSE FALSE  TRUE FALSE FALSE

``` r
which(is.na(x))
```

    ## [1] 3 5

\#let’s start making the code more straightforward

``` r
both_na<- function(x,y) {
  sum(is.na(x)$is.na(y))
}
```

\#number of cases where we have both NA but we have to check the lenghts
before to make them match

``` r
both_na2 <- function(x, y) {
 if(length(x) != length(y)) {
 stop("inputs do not have the same lenght")
 }
 sum( is.na(x) & is.na(y) )
}
```

``` r
# student 1
s1<-c(100, 100, 100, 100, 100, 100, 100, 90)
# student 2
s2<-c(100, NA, 90, 90, 90, 90, 97, 80)
which.min (s1)
```

    ## [1] 8

``` r
#exclude it from the average calculations
mean(s2[-which.min(s2)],na.rm=TRUE)
```

    ## [1] 92.83333

\`\`\`
