# Write your code here.
def dictionary
  {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(string)
  string_array = string.split(" ")
  string_array.each_with_index do |word, index|
    if dictionary.keys.include?(word.downcase)
      string_array[index] = dictionary[word.downcase]
    end
  end
  string_array.join(" ")
end

def bulk_tweet_shortener(array)
  array.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    new_tweet = word_substituter(tweet)
    if new_tweet.length > 140
      final = new_tweet[0..136] + "..."
    else
      new_tweet
    end
  else
    tweet
  end
end
