class Book
# write your code here
    attr_accessor :title

    def initialize
        @except = ["and", "in", "of", "the", "a", "an"]
    end

    def title
        result = "" # Here puts final result as a string
        wordsArray = @title.split # Separate string to array 

        wordsArray.each do |word| # use for each method to take one word from array
            if @except.include?(word) # check that word is on except array if not go next
                result += word + " "
            else
                result += word.capitalize + " " # Capitalize and add " "
            end
        end

        return result = result[0].capitalize + result[1, result.length].chop # Capitalize every time first latter on result string
    end
end

book = Book.new
puts book.title = "asdasd"
puts book.title

puts book.title = "stuart little"
puts book.title

puts book.title = "war and peace"
puts book.title
