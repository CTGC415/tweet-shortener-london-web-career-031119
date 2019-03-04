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
  words = tweet.split(" ")
  words.map do |word|
    if dictionary.keys.include?(word)
      binding.pry
      word = dictionary[word]
    end
  end
  words.join(" ")
end

def bulk_tweet_shortener(tweet)

end

def selective_tweet_shortener(tweet)

end

def shortened_tweet_truncator(tweet)

end
