class Timer
  #write your code here
  attr_accessor :seconds
  
  def initialize
    @seconds = 0
  end
  
  def time_string 
    hr = @seconds.to_i / 3600
    min = (@seconds.to_i % 3600) / 60
    secs = (@seconds.to_i % 3600) % 60
    hr = hr.to_s
    min = min.to_s
    secs = secs.to_s
    
    if hr.length == 1 
      hr = hr.insert(0,"0")
    end
    
    if min.length == 1 
      min = min.insert(0,"0")
    end
    
    if secs.length == 1 
      secs = secs.insert(0,"0")
    end
	  
    return hr + ":" + min + ":" + secs
  end
end
