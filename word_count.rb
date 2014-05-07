require 'pp'

# use a heredoc
sentence = <<-something
    Steven likes the movies.  Blake likes to ride his bike but hates movies.
    Blake is taller than sven.  Steven is a great teacher.
  something

# END GOAL - Find out the cost of all words that appear the most frequently in a sentence.
# Assume the letter A costs 1, B costs 2, C costs 3
# tools - programatic thinking, iterators

# count frequency of words in sentence
# step 1 is break up our string into an array
word_list = sentence.downcase.gsub(".", "").split(" ")

# create a hash that starts at 0 for nonexistent keys
word_frequency = Hash.new(0)
word_list.each do |word|
  word_frequency[word] += 1
end
# pp word_frequency

# how do i know what i'll get yielded when i call each_pair?

# group by frequency
grouped_frequency = {}
word_frequency.each_pair do |word, count|
  if grouped_frequency[count]
    grouped_frequency[count] << word
  else
    grouped_frequency[count] = [word]
  end
end
# grouped_frequency

largest = grouped_frequency.keys.sort.last
most_common_words = grouped_frequency[largest]
# pp most_common_words
# find all words that appear the most times in the sentence

# build a cost of each letter hash
cost = {}
# ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
"a".upto("z").to_a.each_with_index do |letter, index|
  cost[letter] = index + 1
end
# pp cost

# calculate the cost of each word
# ["steven", "likes", "movies", "blake", "is"]
total = 0
most_common_words.each do |word|
  word.each_char do |letter|
    total += cost[letter]
  end
end
pp total

# sum the cost of each word






















