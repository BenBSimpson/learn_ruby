class Book
	
  attr_reader :title

  def title=(name)
  	#Show what words should not be capitalized (only includes tested words)
  	art_con_prep = ["the", "a", "an", "and", "in", "of"]
  	words = name.split(" ")
  	for i in 0...words.length do
  		#Check if the word is an article, conjunction or preposition
  		if art_con_prep.include?(words[i])
  			#Check if art. con. or prep. is the first word in the title
  			if i == 0
  				#If first word, capitalize
  				words[i][0] = words[i][0].upcase
  			else
  				#Else, do nothing
  			end
  		else
  			#If word is not an art. con. or prep. then capitalize
  			words[i][0] = words[i][0].upcase
  		end
  	end
    #join words back together and set modified title
  	words = words.join(" ")
  	@title = words
  end
end
