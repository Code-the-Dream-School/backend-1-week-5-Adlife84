class Timer
  #write your code here
  attr_accessor :seconds 

  def initialize(seconds = 0)
    @seconds = seconds
    @h = 0
    @m = 0
    @s = 0
  end

  def splitSecondsToTime
      sec = @seconds
      
      @h = sec / 3600 % 24 
      @m = sec / 60 % 60 
      @s = sec % 60
      puts "Hours: #{@h}"
      puts "Minuts: #{@m}"
      puts "Seconds: #{@s}" 
  end

  def seconds
    @seconds
  end

  def to_s
    if @h < 10 
      h = "0#{@h}"
    else
      h = @h.to_s
    end
    if @m < 10 
      m = "0#{@m}"
    else
      m = @m.to_s
    end
    if @s < 10 
      s = "0#{@s}"
    else 
      s = @s.to_s
    end
    return "#{h}:#{m}:#{s}"
  end

  def time_string
    puts ""
    splitSecondsToTime
    to_s
  end
end


# My tests 
timer = Timer.new
puts timer.seconds
puts timer.time_string
puts "Result: #{timer.to_s}"

puts timer.seconds = 9
puts timer.time_string
puts "Result: #{timer.to_s}"

puts timer.seconds = 29
puts timer.time_string
puts "Result: #{timer.to_s}"

puts timer.seconds = 69
puts timer.time_string
puts "Result: #{timer.to_s}"

puts timer.seconds = 4000
puts timer.time_string
puts "Result: #{timer.to_s}"



# timer2 = Timer.new
# puts timer2.seconds = 12
# puts timer2.time_string      # Expecting "00:00:12"

# timer3 = Timer.new
# puts timer3.seconds = 66
# puts timer3.time_string      # Expecting "00:01:06"

# timer4 = Timer.new
# puts timer4.seconds = 4000
# puts timer4.time_string      # Expecting "01:06:40"