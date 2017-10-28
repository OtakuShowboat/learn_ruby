#write your code here
def echo(say)
	return say
end

def shout(say)
	return say.upcase
end

def repeat(say, num = 2)
	return ("#{say} " * num).rstrip
end

def start_of_word(word, id)
	return word.slice(0, id)
end

def first_word(word)
	id = word.index(" ")
	return word.slice(0, id)
end

def titleize(word)
	word.capitalize!
	no_cap_words = ["and", "or", "over", "to", "the", "a", "but", "in", "for", "nor", "from", "by"]
	title_cap_words = word.split(" ").map {|word|
		if no_cap_words.include?(word)
			word
		else
			word.capitalize
		end
		}.join(" ")
	return title_cap_words
end