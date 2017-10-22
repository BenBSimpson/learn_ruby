class Timer
  #write your code here
  #one minute = 60 seconds
  #one hour = 3600 seconds
  attr_accessor :seconds

  def initialize
  	@seconds = 0
  end 

  def time_string 
  	hours = @seconds / 3600
  	minutes = (@seconds - (hours * 3600)) / 60
  	seconds = @seconds - (hours * 3600) - (minutes * 60)
  	return "#{hours.to_s.rjust(2, '0')}:#{minutes.to_s.rjust(2, '0')}:#{seconds.to_s.rjust(2, '0')}"
  end

end
