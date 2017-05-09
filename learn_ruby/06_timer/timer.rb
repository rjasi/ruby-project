
class Timer
  def initialize 
  	@seconds = 0
  end

  def seconds=(s)
  	@seconds=s
  end

  def seconds
  	return @seconds
  end 


  def time_string  	
	return Time.at(@seconds).utc.strftime("%H:%M:%S") 
  end 
end
