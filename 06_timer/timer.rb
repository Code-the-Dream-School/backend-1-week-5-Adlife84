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
    "#{h}:#{m}:#{s}"
  end

  def time_string
    splitSecondsToTime
    to_s
  end
  
end


# My tests 
# Expecting 0
timer = Timer.new
puts timer.seconds

# Expecting "00:00:00"
timer.seconds = 0
puts timer.time_string

# Expecting "00:00:12"
timer.seconds = 12
puts timer.time_string

# Expecting "00:01:06"
timer.seconds = 66
puts timer.time_string

# Expecting "01:06:40"
timer.seconds = 4000
puts timer.time_string




# timer2 = Timer.new
# puts timer2.seconds = 12
# puts timer2.time_string      

# timer3 = Timer.new
# puts timer3.seconds = 66
# puts timer3.time_string      

# timer4 = Timer.new
# puts timer4.seconds = 4000
# puts timer4.time_string      