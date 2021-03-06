#!/bin/bash

#All examples below are done using the agreed upon local directory for custom tables and queries:  /home/malam/yelp/results

#Creating tip_sentiment directory in Local filesystem
mkdir yelp/results/tip_sentiment

#Creating tip_sentiment_trial directory in Local filesystem
mkdir yelp/results/tip_sentiment_tip_sentiment_trial_1

#Download dictionary file to analyze sentiment of data in Local filesystem
wget -O dictionary.tsv https://s3.amazonaws.com/hipicdatasets/dictionary.tsv

#Create yelp/tip/dictionary directory in the HDFS (/home/malam/) to upload dictionary files to
hdfs dfs -mkdir yelp/tip/dictionary

#Upload the dictionary.tsv file into the above directory
hdfs dfs -put dictionary.tsv yelp/tip/dictionary

