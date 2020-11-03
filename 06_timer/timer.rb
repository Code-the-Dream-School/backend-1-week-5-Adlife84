class Timer
  #write your code here
  def initialize
    @timer = Time.new(0)
  end

  def seconds
    @timer.sec
  end

  def time_string
    @timer.strftime("%H:%M:%S")
  end
end

timer = Timer.new
puts timer
puts timer.time_string