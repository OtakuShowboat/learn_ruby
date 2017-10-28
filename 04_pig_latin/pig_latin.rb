#write your code here
def translate word
  word = word.split(" ")
  vowels = ["a","e","i","o","u","A","E","I","O","U"]
  punctuation = [".",",","!","?",";",":","'"]
  for i in 0...word.length
    if punctuation.include?(word[i][-1])
      insert_spot = -2
		
	else
      insert_spot = -1
    end
  
    if vowels.include?(word[i][0])
      word[i].insert(insert_spot, "ay")
    
	else
      is_cons = true;
      num_cons = 1;
      j = 1;
      while is_cons do
        if vowels.include?(word[i][j])
          if word[i][j] == "u" && word[i][j - 1] == "q"
            j += 1
            num_cons += 1
          else
          is_cons = false;
          end

        else
          num_cons += 1
          j += 1
        end
      end
      
      if word[i][0] == word[i][0].upcase
        word[i][0] = word[i][0].downcase
        downcase_first = true
      else
        downcase_first = false
      end

      word[i].insert(insert_spot, word[i][0...num_cons])
      word[i][0...num_cons] = ""
      
      if downcase_first
        word[i][0] = word[i][0].upcase
      end
      
      word[i].insert(insert_spot, "ay")
    end
  end
  
  return word.join(" ")
end