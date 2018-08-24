# Write your code here.
def dictionary
  {
    "hello" => "hi",
    "to" => "2", "two" => "2", "too" => "2",
    "for" => "4", "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(string)
  shorter_string_array = []
  
  string.split(" ").each do |word|
    if dictionary.keys.include?(word)
      shorter_string_array.push(dictionary[word])
    else
      shorter_string_array.push(word)
    end
  end
  
  shorter_string_array.join(" ")
end

def bulk_tweet_shortener(array)
  array.each do |tweet|
    puts word_substituter(tweet)
  end
end