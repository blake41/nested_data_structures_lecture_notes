# Count words in a sentence
require 'pp'
require 'debugger'
# user a heredoc
sentence = <<-something
    Steven likes the movies.  Blake likes to ride his bike but hates movies.
    Blake is taller than steven.  Steven is a great teacher.
  something

# how to split a sentence into words
# remove periods
# hash will say cant call + on nil

counter = Hash.new(0)
sentence.gsub!(".","").split(" ").each do |word|
  counter[word] += 1
end

# pp counter

# what if we want to see all the words that have the highest frequency grouped together 
# what data structure might be good? arrays hold groups of things, hashes hold keys and values
# why each pair?  why does each behave differently on a hash than an array?
# how do i know what i'll get yielded?

frequency = {}
counter.each_pair do |key, value|
  if frequency[value]
    frequency[value] << key
  else
    # what if the array we want to push into doesn't exist?
    frequency[value] = []
    frequency[value] << key
  end
end

# pp frequency

# what if i want to just return all words that appear three times in the sentence

highest_frequency = frequency.keys.sort.last
most_common_words = frequency[highest_frequency]

# how much do each of these words cost?
cost = {}
"a".upto("z").each_with_index do |letter, index|
  cost[letter] = index + 1
end

# pp cost
word_cost = {}
most_common_words.each do |word|
  sum = 0
  word.split("").each do |letter|
    # if we have capitals in our cost it wont match
    sum += cost[letter.downcase]
  end
  word_cost[word] = sum
end
# pp word_cost

# how much do all the words cost in total
sum = 0
word_cost.each do |word, cost|
  sum += cost
end
pp sum

# alter hashes inside an array, should alter the array itself, look at assessment