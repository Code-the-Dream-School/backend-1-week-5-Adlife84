class Timer
  #write your code here
  attr_accessor :seconds 

  def initialize(seconds = 0)
    @seconds = seconds
    @timeArray = []
  end

  def splitSecondsToTimeArray
      sec = @seconds
      
      @timeArray[0] = sec / 3600 % 24
      @timeArray[1] = sec / 60 % 60
      @timeArray[2] = sec % 60
  end

  def seconds
    @seconds
  end

  def to_s
    time = @timeArray
  
    time.each_with_index do |item, index|
      if item < 10 
        time[index] = "0#{item}"
      else
        time[index] = item.to_s
      end
    end

    return time = time.join(":")
  end
   
    
  def time_string
    splitSecondsToTimeArray
    to_s
  end
end


# My tests 

timer = Timer.new

puts timer.splitSecondsToTimeArray
puts timer.time_string

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