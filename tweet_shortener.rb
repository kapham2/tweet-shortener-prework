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
  string_array = string.split(" ")
  
  string_array.each do |word|
    if dictionary.keys.include?(word)
      word = dictionary[word]!
    end
  end
  
  string_array.join(" ")
end