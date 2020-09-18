---
title: "Homework 1"
author: Sanjana Batabyal 
output: github_document
---

This is my solution to Homework 1.

```{r}
library(tidyverse)
```

## Problem 1
Create a data frame comprised of the specified elements

```{r}
prob1df =
  tibble(
      samp = rnorm(10),
      samp_gt_0 = samp > 0,
      char_vec = c("a", "b", "c", "d", "e", "f", "g", "h", "i", "j"),
      factor_vec = factor(c("low", "low", "low", "mod", "mod", "mod", "mod","high", "high", "high"))
)
```
Take the mean of each variable in my data frame
```{r}
mean(pull(prob1df, samp))
mean(pull(prob1df, samp_gt_0))
mean(pull(prob1df, char_vec))
mean(pull(prob1df, factor_vec))
```
The mean for my sample is 0.1026824 and the mean for my sample greater than zero is 0.6 but I could not get the mean for a character vector or the factor vector.
```{r}
as.numeric(pull(prob1df, samp))
as.numeric(pull(prob1df, samp_gt_0))
as.numeric(pull(prob1df, char_vec))
as.numeric(pull(prob1df, factor_vec))
```

## Problem 2
```{r}
data("penguins", package = "palmerpenguins")
summary(penguins)
ncol(penguins)
nrow(penguins)
```
The data are describing information about different types of penguins and have categorized the penguins by different species types (there are 3) and different locations (they hail from 3 different islands). Important variables are bill length (mean: 43.92 mm), bill depth (mean: 17.15 mm), and flipper length (mean: 200.9), body mass (mean: 4202 g), and sex. The data were collected from 2007 - 2009. 

Creating a plot of flipper length vs bill length
```{r}
ggplot(penguins, aes (x = bill_length_mm, y = flipper_length_mm, color = species)) + geom_point()
```