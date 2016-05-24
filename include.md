---
title: 'Developing Data Products Final Assignment'
author: "Prakash Khadka"
date: "25/05/2016"
description: Visualizing a macroeconomic data set observed yearly for economic regression  

---

## Summary
### Description

A macroeconomic data set which provides a well-known example for a highly collinear regression.

### Format

A data frame with 7 economical variables, observed yearly from 1947 to 1962 (n=16).

*GNP.deflator
GNP implicit price deflator (1954=100)

*GNP
Gross National Product.

*Unemployed
number of unemployed.

*Armed.Forces
number of people in the armed forces.

*Population
‘noninstitutionalized’ population ≥ 14 years of age.

*Year
the year (time).

*Employed
number of people employed.

The regression lm(Employed ~ .) is known to be highly collinear.

### Data Source

J. W. Longley (1967) An appraisal of least-squares programs from the point of view of the user. Journal of the American Statistical Association 62, 819–841.


## Source code
The source code of this project is available on my [GitHub](https://github.com/prkhadka/developing_data_products) repository.
