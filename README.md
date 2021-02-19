### Sentiment analysis on teaching evaluations:
# What do your students think of you?

## Tl;dr

* Teaching evaluations can help instructors better understand their student’s learning experience, however interpreting mass amounts of written responses can make identifying common perceptions difficult. 
* Sentiment analysis can identify trends found in written evaluations to help elucidate general perceptions of the course instructor - allowing instructors to see the traits that most affect their student’s learning. 
* Here, I will explore the utility of sentiment analysis in better understanding student perceptions using my personal teaching evaluations.

## Screenshots
![Example screenshot](./img/screenshot.png)


## Analytics
* data processing/cleaning
* sentiment analysis
* data visualizations

## Technologies
* R (version 3.4.1)

## Packages
* tidyverse
* tidytext
* textdata
* stopwords
* pdftools
* ggplot2
* viridis


## About the project

### WHAT ARE TEACHING ASSISTANT COURSE EVALUATIONS?

Graduate students often have the opportunity to be employed as a teaching assistants, or "TAs", to aid professors in lectures and course modules. Following the end of an academic quarter, undergraduate students participate in instructor evaluations to share feedback from their learning experience, and furthermore, evaluate their TA's effectiveness as an instructor of course. These evaluations typically include two components: (1) a numerical evaluation of a given criteria in which the student expresses the degree to which they agree or disagree (eg. TA was well organized for every lecture, etc.) and (2) a written evaluation where students can leave more personalized comments based on their impressions of the course and the TA.

### WHAT IS SENTIMENT ANALYSIS?

Sentiment analysis is a data classification tool used to detect positive, negative or neutral sentiment underlying text. These analyses are often used in market research to better understand the attitudes, opinions, and emotions expressed by the public on a given topic over time and space.

### HOW DOES IT WORK?

Sentiment analysis uses natural language processing and machine learning algorithems to identify emotional connotation underlying words and their association between one another. This processes generally focuses on word polarity (positive, negative, neutral), emotion (angry, sad, nervous, happy, etc.) or intention (interested or not interested).

### WHAT WILL I BE DOING HERE?

While numerical values are easily evaluated (usually expressed as an average out of a total), written responses can be much more difficult to evaluate given the complexity of language structure. However, sentinment analysis may help identify some common trends found in these written responses to help elucide student perceptions of the TA. For this project, I will use the written evaluations from students across various courses I've taught over the last couple years as a graduate TA. Using sentiment analysis, I aim to address two primary questions:

* What are the most frequent words used by students in their evaluations?
* How are these words ranked in regards to their sentiment value?

## Getting Started

1. Clone this repo (for help see this [tutorial](https://help.github.com/articles/cloning-a-repository/)).
2. Raw data are stored [here](https://help.github.com/articles/cloning-a-repository/)) within this repo.    
3. Data processing and analysis scripts are stored [here](https://help.github.com/articles/cloning-a-repository/).
4. Follow setup tutorial [here](https://help.github.com/articles/cloning-a-repository/). 
5. Additionally, written responses can be found in my [blog post](https://help.github.com/articles/cloning-a-repository/).  


## Contact

Rob Straser
* email: robstraser@gmail.com 
* website: [RobStraser.com](https://robstraser.com)
* twitter: [@RobStraser](https://twitter.com/RobStraser) 




