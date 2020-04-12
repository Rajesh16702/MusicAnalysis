Music Analysis
================

## GitHub Documents

This is an R Markdown format used for publishing markdown documents to
GitHub. When you click the **Knit** button all R code chunks are run and
a markdown file (.md) suitable for publishing to GitHub is generated.

## Including Code

You can include R code in the document as follows:

``` r
library(dplyr)
```

    ## 
    ## Attaching package: 'dplyr'

    ## The following objects are masked from 'package:stats':
    ## 
    ##     filter, lag

    ## The following objects are masked from 'package:base':
    ## 
    ##     intersect, setdiff, setequal, union

``` r
library(audio)
library(warbleR)
```

    ## Loading required package: tuneR

    ## 
    ## Attaching package: 'tuneR'

    ## The following object is masked from 'package:audio':
    ## 
    ##     play

    ## Loading required package: seewave

    ## Loading required package: NatureSounds

    ## Loading required package: knitr

    ## 
    ## NOTE: functions are being renamed (run 'print(new_function_names)' to see new names). Both old and new names are available in this version 
    ##  Please see citation('warbleR') for use in publication

``` r
library(seewave)
```

## Play the songs

You can play songs directly from website hosting free .wav song files,
for example:

``` r
wav_file <- tempfile()
download.file("https://file-examples.com/wp-content/uploads/2017/11/file_example_WAV_1MG.wav", wav_file, mode = "wb")
aud_wav <- load.wave(wav_file)
audio::play(aud_wav)
```

Visualizing the song graphically

``` r
a <- readWave(wav_file, from = 1, to = 20, units = "seconds")
seewave::spectro(a, fastdisp = TRUE)
```

![](MusicWithR_files/figure-gfm/seewave-1.png)<!-- --> The sound can be
played normal, slower or faster - opens media player window

``` r
# normal
listen(a,f=8000)
```

``` r
# two times faster
listen(a,f=8000*2)
```

``` r
# two times slower
listen(a,f=8000/2)
```

Note that the `echo = FALSE` parameter was added to the code chunk to
prevent printing of the R code that generated the plot.
