puts 'This program will count how often words are used in the text you enter here: '
text = gets.chomp
#splits the input into an array of words
words = text.split

frequencies = Hash.new(0)

words.each{|word|
    #makes all words downcase, so that there are no duplicates such as hi & Hi
    word.downcase!
    #removes commas, dots and "" from the words
    word.gsub!(/[„“".,]/,"")
    frequencies[word] += 1
}

frequencies = frequencies.sort_by do |word, num|
  num
end

frequencies.reverse!

frequencies.each do |word, num| 
  puts "#{word} #{num}"
end
