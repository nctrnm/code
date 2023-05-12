#Author: Matthew McGilvery
#Date: 2023-05-12
#Topic: Sentiment Analysis

# Download necessary NLTK resources
import nltk
from nltk.sentiment.vader import SentimentIntensityAnalyzer
from textblob import TextBlob

# Download necessary NLTK resources
nltk.download('punkt')
nltk.download('stopwords')

# Get the path to the input file from the user
filepath = input("Enter the path to your text file: ")

# Read the text file
with open(filepath, 'r') as f:
    text = f.read()

# Split the text into sentences
sentences = nltk.sent_tokenize(text)

# Initialize the sentiment analyzer
sia = SentimentIntensityAnalyzer()

# Analyze each sentence and calculate the overall sentiment score
pos_score = neg_score = neu_score = compound_score = subjective_score = objective_score = 0
for sentence in sentences:
    # Use SentimentIntensityAnalyzer for positive, negative, neutral, and compound scores
    scores = sia.polarity_scores(sentence)
    pos_score += scores['pos']
    neg_score += scores['neg']
    neu_score += scores['neu']
    compound_score += scores['compound']

    # Use TextBlob for subjectivity score
    blob = TextBlob(sentence)
    subjective_score += blob.sentiment.subjectivity

    # Use TextBlob for average word length score
    average_word_length = len(sentence.split()) / len(sentence)

    # Use TextBlob for number of unique words score
    number_of_unique_words = len(set(sentence.split()))

    # Use TextBlob for number of stop words score
    number_of_stop_words = len([word for word in sentence.split() if word in nltk.corpus.stopwords.words('english')])

# Calculate the average scores for each sentiment category
num_sentences = len(sentences)
pos_score /= num_sentences
neg_score /= num_sentences
neu_score /= num_sentences
compound_score /= num_sentences
subjective_score /= num_sentences
objective_score = 1 - subjective_score
average_word_length /= num_sentences
number_of_unique_words /= num_sentences
number_of_stop_words /= num_sentences

# Print the results
print('Positive Score:', round(pos_score,2))
print('Negative Score:', round(neg_score,2))
print('Neutral Score:', round(neu_score,1))
print('Compound Score:', round(compound_score,3))
print('Subjective Score:', round(subjective_score,2))
print('Objective Score:', round(objective_score,2))
print('Average Word Length:', round(average_word_length,4))
print('Number of Unique Words:', round(number_of_unique_words,2))
print('Number of Stop Words:', round(number_of_stop_words,2))
