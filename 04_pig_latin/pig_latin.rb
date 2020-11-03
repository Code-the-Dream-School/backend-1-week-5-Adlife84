#write your code here

# This method return true or false if char is vowel return true
def is_it_vowel?(char)
    vowelArray = ["a","e","i","o","u"]
    vowelArray.include?(char)
end


def translate(string = "apple banana cherry")
    # Split words from string to array
    wordsArray = string.split
    
    # 
    wordsArray.each_with_index do |word, index|
        firstChar = word[0]
        secondChar = word[1]
        thirdChar = word[2]
        result = ""

        if is_it_vowel?(firstChar)
            result = word + "ay"
        elsif firstChar == "q" && secondChar == "u"
            result = word[2, word.length] + word[0,2] + "ay"
        elsif !is_it_vowel?(firstChar) && secondChar == "q" && thirdChar == "u"
            result = word[3, word.length] + word[0,3] + "ay"
        elsif !is_it_vowel?(firstChar) && !is_it_vowel?(secondChar) && !is_it_vowel?(thirdChar)
            result = word[3, word.length] + word[0,3] + "ay"
        elsif !is_it_vowel?(firstChar) && !is_it_vowel?(secondChar)
            result = word[2, word.length] + word[0,2] + "ay"
        elsif !is_it_vowel?(firstChar)
            result = word[1, word.length] + word[0] + "ay"
        end
        wordsArray[index] = result
    end
    return wordsArray.join(" ")
end