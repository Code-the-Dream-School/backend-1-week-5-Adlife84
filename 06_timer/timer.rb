class Timer
  #write your code here Time.new(2002, 10, 31, 2, 2, 2)
  attr_accessor :seconds

  def initialize(seconds = 0)
    @timer = Time.new(0)
    @seconds = seconds
  end

  def seconds
    puts "Hello from seconds method"
    @timer = @timer + @seconds
    @timer.sec
  end

  def time_string
    seconds
    @timer.strftime("%H:%M:%S") 
  end
end


# My tests 
timer = Timer.new
puts timer.seconds

puts timer.seconds = 12
puts timer.time_string      # Expecting "00:00:12"

puts timer.seconds = 66
puts timer.time_string      # Expecting "00:01:06"

puts timer.seconds = 4000
puts timer.time_string      # Expecting "01:06:40"