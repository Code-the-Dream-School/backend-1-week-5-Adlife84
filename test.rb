class Name
    attr_accessor :title, :first_name, :middle_name, :last_name

    def initialize(title, first_name, middle_name, last_name)
      @title = title
      @first_name = first_name
      @middle_name = middle_name
      @last_name = last_name
    end

  
end

myName = Name.new("Title", "Andrei", "Igorevich", "Ivanov")
puts myName.title
puts myName.first_name
myName.first_name = "Maks"
myName.middle_name = "Olgin"
puts myName.first_name
puts myName.middle_name