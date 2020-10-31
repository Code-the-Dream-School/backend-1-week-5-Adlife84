#write your code here
def translate(string = "apple banana cherry")
    wordsArray = string.split
    vowelArray = ["a","e","i","o","u"]

    wordsArray.each_with_index do |word, index|
        puts word
        vowelArray.each do |vowel|
            if word[0] != vowel && word[1] != vowel
                wordsArray[index] = word[2, word.length] + word[0,2] + "ay"
                break
            elsif word[0] != vowel
                wordsArray[index] = word[1, word.length] + word[0] + "ay"
                break
            elsif word[0] == vowel 
                wordsArray[index] = word + "ay"
                break
            end
        end
    end

    return wordsArray.join(" ")
end

translate()