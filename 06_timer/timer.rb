class Timer
  #write your code here Time.new(2002, 10, 31, 2, 2, 2)
  attr_accessor :seconds

  def initialize
    @timer = Time.new(2020)
    @seconds ||= 0
  end

  def seconds
    puts "Hello from seconds"
    @timer = @timer + @seconds
    @timer.sec
  end

  def time_string
    @timer.strftime("%H:%M:%S")
  end
end

timer = Timer.new

puts timer
puts timer.seconds

timer.seconds = 66

puts timer.seconds
puts "From time_string: #{timer.time_string}"

