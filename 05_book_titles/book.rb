class Book
# write your code here
# Basically the logic for Titleize in 03_simon_says, just converted for use in a class.
	attr_reader :title
	def title= (word)
		
		word.capitalize!
		no_cap_words = ["and", "or", "over", "to", "the", "a", "but", "in", "for", "nor", "from", "by", "of", "an"]
		title_cap_words = word.split(" ").map {|word|
			if no_cap_words.include?(word)
				word
			else
				word.capitalize
			end
			}.join(" ")
		
		@title = title_cap_words
	end
	
end
