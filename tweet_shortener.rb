# Write your code here.
require "pry"
def dictionary
  hash = {
    hello: "hi",
    to: "2",
    two: "2",
    too: "2",
    for: "4",
    four: "4",
    be: "b",
    you: "u",
    at: "@",
    and: "&"
  }
end

def word_substituter(tweet)
  words = tweet.split(" ").map do |word|
    dictionary.keys.include?(word.downcase.to_sym) ? word = dictionary[word.downcase.to_sym] : word
  end
  words.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each { |tweet| puts word_substituter(tweet) }
end

def selective_tweet_shortener(tweet)
  tweet.length > 140 ? word_substituter(tweet) : tweet
end

def shortened_tweet_truncator(tweet)
  tweet.length > 140 ? new_tweet = word_substituter(tweet) : (return tweet)
  new_tweet.length > 140 ? new_tweet[0..136] + "..." : new_tweet
end
