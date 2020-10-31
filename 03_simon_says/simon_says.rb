#write your code here
def echo(string)
    return string
end

def shout(string)
    return string.upcase 
end

def repeat(string, number = 2)
     result = (string + " ") * number
    return result.chop
end

def start_of_word(string, number)
    return string[0,number]
end

def first_word(string = "Hello World!")
    first_word = ""
    string.each_char do |c| 
        if c != " "
        first_word += c
        else 
            break
        end
    end
    return first_word
end

def titleize(string = "war and peace")
    wordsArray = string.split
    result = [] 

    wordsArray.each do |word|
        if word.length <= 4
            result.push(word)
        else
            result.push(word.capitalize)
        end
    end
    result[0] = result[0].capitalize
    result[result.length - 1] = result[result.length - 1].capitalize
    string = result.join(" ")
    return string
end
