puts 'This program will count how often words are used in the text you enter here: '
text = gets.chomp
#splits the input into an array of words
words = text.split

#makes a new hash with all counters at 0
frequencies = Hash.new(0)

words.each{|word|
    #makes all words downcase, so that there are no duplicates such as hi & Hi
    word.downcase!
    #removes commas, dots and "" from the words
    word.gsub!(/[„“".,]/,"")
    frequencies[word] += 1
}

#sorts the hash with the words by the frequency of each word
frequencies = frequencies.sort_by do |word, num|
  num
end

frequencies.reverse!

#prints out the words and frequencies
frequencies.each do |word, num| 
  puts "#{word} #{num}"
end
