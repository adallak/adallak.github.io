---
layout: post
title: New book — Regressions in Covariances, Dependencies and Graphs
subtitle: Available now for preorder
gh-repo: adallak/recode_chapter
gh-badge:
  - star
  - fork
tags:
  - book
  - statistics
  - regression
  - covariance
  - graphical-models
comments: true
published: true
---

{: .box-note}
**Big news.** Our new book *Regressions in Covariances, Dependencies and Graphs*, co-authored with **Mohsen Pourahmadi**, is now available for preorder. Published in the **Chapman & Hall / CRC Texts in Statistical Science** series.

![Book cover](https://rcdg-book.cv/material/book_cover_v1.png){: .center-block :}

## What it's about
## What it's about

The book is about **modeling dependencies — linear and nonlinear, cross-sectional, temporal, and spatial — in multivariate data**. Its unifying idea is to bring the success of regression on means (first moments) to the harder problem of modeling covariance matrices (second moments), and eventually full distributions. Two complementary strategies anchor the treatment: *covariance regression*, which writes a covariance matrix or one of its transforms as a function of covariates, edging toward generalized linear models for second moments; and *hidden regression*, the column-by-column iterative idea at the heart of the regularized Gaussian likelihood and the Graphical Lasso. Copulas extend the framework to nonlinearity, extreme values, and long-tail behavior, and regularization makes it work in high dimensions. Every chapter ends with hands-on R scripts, and the companion **`recode`** package ships real and simulated datasets along with the functions to reproduce every example.

## Where to order

- **Amazon:** [amazon.com/dp/1041066953](https://www.amazon.com/gp/product/1041066953/)
- **CRC Press / Routledge:** [routledge.com](https://www.routledge.com/Regressions-in-Covariances-Dependencies-and-Graphs/Pourahmadi-Dallakyan/p/book/9781041066958)

## Companion site and code

The companion site has every chapter's R script ready to download, plus a per-chapter discussion forum:

**[rcdg-book.cv](https://rcdg-book.cv/)**

Install the companion R package once:

~~~r
library(devtools)
devtools::install_github("adallak/recode")
~~~

Chapter scripts live in a separate public repo for easy cloning: [github.com/adallak/recode_chapter](https://github.com/adallak/recode_chapter).

## Topics covered

- Regularized regression and the Lasso, with thresholding and coordinate descent
- Covariance matrices: spectral, Cholesky, and variance–correlation factorizations
- PCA, factor analysis, and modern approximate factor models (POET)
- GLM for covariance matrices, graphical regression
- Shrinkage (Ledoit–Wolf) and thresholding for large covariance estimation
- Undirected Gaussian graphical models and the Graphical Lasso
- DAGs, Bayesian networks, and structural equation models
- Multivariate stationary time series, sparse VAR, Granger causality
- Spatial data and Vecchia approximations

{: .box-note}
**Found a bug or have a question?** Open an issue or discussion on the [companion site](https://rcdg-book.cv/topics.html). Feedback genuinely helps the next printing.
