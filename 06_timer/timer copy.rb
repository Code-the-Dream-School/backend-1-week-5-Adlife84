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
timer1 = Timer.new
puts timer1.seconds

timer2 = Timer.new
puts timer2.seconds = 12
puts timer2.time_string      # Expecting "00:00:12"

timer3 = Timer.new
puts timer3.seconds = 66
puts timer3.time_string      # Expecting "00:01:06"

timer4 = Timer.new
puts timer4.seconds = 4000
puts timer4.time_string      # Expecting "01:06:40"