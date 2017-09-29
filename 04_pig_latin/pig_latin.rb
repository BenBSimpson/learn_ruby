#method to determine if a vowel is a letter
def vowel?(letter)
	vowels = ['a', 'e', 'i', 'o', 'u']
	vowels.include?(letter)
end

def cut_and_paste(consonants, word)
	word = "#{word}#{consonants}ay"
	word.sub!(consonants, '')
end

def find_consonants(word)
	i = 0
	consonants = ""
	while vowel?(word[i]) == false
		consonants = "#{consonants}#{word[i]}"
		i += 1
	end
	return consonants
end

def translate_word(word)
	if word[0..2] == 'squ'
		#handles words beginning with 'squ'
		consonants = 'squ'
		word = cut_and_paste(consonants, word)
	elsif word[0..1] == 'qu'
		#handles words beginning with 'qu'
		consonants = 'qu'
		word = cut_and_paste(consonants, word)
	elsif vowel?(word[0])
		#handles words beginning with a vowel
		word = word + 'ay'
	else
		word = cut_and_paste(find_consonants(word), word)
	end
end

def translate(input)
	input.split.map { |word| translate_word(word) }.join(" ")
end
