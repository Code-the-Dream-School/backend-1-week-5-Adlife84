#write your code here

# This method return true or false if char is vowel return true
def is_it_vowel?(char)
    vowelArray = ["a","e","i","o","u"]
    vowelArray.include?(char)
end


def translate(string = "apple banana cherry")
    wordsArray = string.split
    

    wordsArray.each_with_index do |word, index|
        firstChar = word[0]
        secondChar = word[1]
        thirdChar = word[2]
        
        if is_it_vowel?(firstChar)
            wordsArray[index] = word + "ay"
        elsif firstChar == "q" && secondChar == "u"
            wordsArray[index] = word[2, word.length] + word[0,2] + "ay"
        elsif !is_it_vowel?(firstChar) && secondChar == "q" && thirdChar == "u"
            wordsArray[index] = word[3, word.length] + word[0,3] + "ay"
        elsif !is_it_vowel?(firstChar) && !is_it_vowel?(secondChar) && !is_it_vowel?(thirdChar)
            wordsArray[index] = word[3, word.length] + word[0,3] + "ay"
        elsif !is_it_vowel?(firstChar) && !is_it_vowel?(secondChar)
            wordsArray[index] = word[2, word.length] + word[0,2] + "ay"
        elsif !is_it_vowel?(firstChar)
            wordsArray[index] = word[1, word.length] + word[0] + "ay"
        end


            # if vowelArray.include?(word[0]) 
            #     wordsArray[index] = word + "ay"
            #     break
            # elsif !vowelArray.include?(word[0])
            #     wordsArray[index] = word[2, word.length] + word[0,2] + "ay"
            #     # puts "True ", wordsArray[index]
            #     break
            # elsif word[0] != vowel
            #     wordsArray[index] = word[1, word.length] + word[0] + "ay"
            # end
        
    end

    return wordsArray.join(" ")
end

puts translate("apple")
puts translate("banana")
puts translate("square")
# puts translate("cherry")
# puts translate("eat pie")
# puts translate("three")