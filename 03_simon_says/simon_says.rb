#write your code here
def echo(echo)
	return echo
end

def shout(shout)
	return shout.upcase
end

def repeat(repeat, number = 2)
	string = ""
	while number >= 1
		string = string + "#{repeat} "
		number = number - 1 
	end
	return string.rstrip
end

def start_of_word(string, number)
	return string[0, (number)] 
end

def first_word(string)
	return string.partition(" ").first
end

def titleize(sentence)
  little_words = %w(end over and the)
  sentence.capitalize.gsub(/(\w+)/) do |word|
    little_words.include?(word) ? word : word.capitalize
  end
end