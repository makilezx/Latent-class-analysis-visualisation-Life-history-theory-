# Latent class analysis & visualization 


Utilizing insights from 2020. scientific study, code in this repository delves into the intriguing intersection of Life History Theory (LHT) and basic personality traits. It provides an in-depth exploration into the manifestation of personality traits within latent classes derived from previously obtained LHT scores. 

Furthermore, the repository examines distinctions among diverse classification/clustering solutions generated by latent class analysis and cluster analysis.


## Introduction

Life History Theory (LHT) has emerged as a pivotal framework within the expansive landscape of the psychology of individual differences. Rooted in evolutionary biology, this theory has been shown, through previous research, to interconnect with various psychological constructs, notably personality traits.

## Aim

The primary goal of the analyses presented here is to explore latent classes within the context of LHT and investigate their relationships with fundamental personality traits. 


## Data

The sample consisted of 1049 participants. Before analysis, the dataset underwent cleaning and preprocessing. Univariate and multivariate outliers were removed, and missing data were imputed using the Expectation-Maximization (EM) algorithm within SPSS. Prior to that, Little's test was conducted to ensure the adequacy of the imputation process and the reliability of the dataset for subsequent analyses. 

For general data manipulation in Python, the libraries numpy and pandas were utilized. Additionally, R packages tidyr and dplyr were employed intermittently for similar tasks.

## Analysis 

- The R code in this repository employs the mclust package to conduct **latent class analysis (LCA)**. This analysis aims to unveil distinct groups or subtypes of subjects by examining their response patterns. Within the LCA, the Bayesian Information Criterion (BIC) suggested a 5-class solution as the most optimal clustering solution, which served as a starting point for a detailed examination. LCA reveals the identification of five distinct classes: *Moderate LHT; High parental relationship quality; Slow LHT; Low parental relationship quality; Slow LHT – low romantic partner attachment quality* (Picture 1).

- Tableau has been integrated for supplementary visualizations, particularly in **illustrating isolated classes** (Picture 1). The **distribution of personality traits within these identified classes** was examined and visualized using Python libraries seaborn and matplotlib (Picture 2). 

- In addition, **cluster analysis** in Python was conducted to compare results with the primary LCA solution, driven purely by curiosity. The code featured in this repository goes beyond initial hierarchical and k-means analyses, incorporating a two-step cross-validation procedure. During this process, the dataset underwent a random split into two subsets. In the first stage, Ward's hierarchical cluster analysis was applied to both subsets, recording cluster centers. Subsequently, in the second stage, k-means clustering was performed for both subsets using the cluster centers previously obtained. Cluster solutions were then compared using Cohen's kappa coefficient. To enhance the reliability of cluster stability estimates, this entire procedure was repeated ten times. Additionally, the process underwent bootstrapping, drawing 1000 samples with replacement from the original dataset.

- Also, the code visualizes *the predictive power* of personality types versus personality dimensions, employing Python (seaborn) for visualizations (Pictures 4 and 5). 


## Results
##### Picture 1: Latent classes extracted by LCA
![Picture1](https://github.com/makilezx/Latent-class-analysis-visualisation-Life-history-theory/assets/50851469/77463bcb-8631-40fc-a2bd-aed9d552b052)

##### Picture 2: Distribution of personality traits within classes extracted by LCA
![traitsxclasses](https://github.com/makilezx/Latent-class-analysis-visualisation-Life-history-theory/assets/50851469/2bb7b716-0cca-4d67-859c-894a62272eaa)

###### Pictures 4, 5: Predictive power of personality types vs personality dimensions
![Picture3](https://github.com/makilezx/Latent-class-analysis-visualisation-Life-history-theory/assets/50851469/1bfbd184-0994-41d1-b6a9-47cb1221a42b)
![Picture2](https://github.com/makilezx/Latent-class-analysis-visualisation-Life-history-theory/assets/50851469/f63f1c01-f030-4f6e-b7fd-095c0e3defb2)

