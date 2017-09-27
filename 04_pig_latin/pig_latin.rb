def translate(input)
	def is_vowel(letter) 	#is_vowel method determines if a given argument is a vowel
		vowels = ["a", "e", "i", "o", "u"]
		if vowels.include?(letter)
			return true
		else
			return false
		end
	end

	if input.include?(" ")
		words = input.split(" ")
		i = 0
		while i < words.length
			if is_vowel(words[i][0])
				words[i] = words[i] + "ay"
			elsif is_vowel(words[i][0]) == false
				if words[i][0].downcase == "q" && words[i][1].downcase == "u"
					consonants = words[i][0..1]
					words[i] = words[i] + words[i][0..1] + "ay"
					words[i].sub!(consonants, '')
					i += 1
					next
				elsif is_vowel(words[i][1]) == false
					if words[i][1].downcase == "q" && words[i][2].downcase == "u"
						consonants = words[i][0..2]
						words[i] = words[i] + words[i][0..2] + "ay"
						words[i].sub!(consonants, '')
					elsif is_vowel(words[i][2]) == false
						consonants = words[i][0..2]
						words[i] = words[i] + words[i][0..2] + "ay"
						words[i].sub!(consonants, '')
					end
					consonants = words[i][0..1]
					words[i] = words[i] + words[i][0..1] + "ay"
					words[i].sub!(consonants, '')
				else
					consonants = words[i][0]
					words[i] = words[i] + words[i][0] + "ay"
					words[i].sub!(consonants, '')
				end
			end
			i += 1
		end
		return words.join(" ")
	else
		if is_vowel(input[0])
			translated_word = input + "ay"
			return translated_word
		elsif is_vowel(input[0]) == false
			if input[0].downcase == "q" && input[1].downcase == "u"
				consonants = input[0..1]
				translated_word = input + input[0..1] + "ay"
				translated_word.sub!(consonants, '')
				return translated_word
			end
			if is_vowel(input[1]) == false
				if input[1].downcase == "q" && input[2].downcase == "u"
					consonants = input[0..2]
					translated_word = input + input[0..2] + "ay"
					translated_word.sub!(consonants, '')
					return translated_word
				end
				if is_vowel(input[2]) == false
					consonants = input[0..2]
					translated_word = input + input[0..2] + "ay"
					translated_word.sub!(consonants, '')
					return translated_word
				end
				consonants = input[0..1]
				translated_word = input + input[0..1] + "ay"
				translated_word.sub!(consonants, '')
				return translated_word
			else
				consonants = input[0]
				translated_word = input + input[0] + "ay"
				translated_word.sub!(consonants, '')
				return translated_word
			end
		end
	end
end


