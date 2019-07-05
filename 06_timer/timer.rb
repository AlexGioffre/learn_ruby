class Timer
  attr_accessor :seconds 

  def initialize 
    @seconds = 0
  end

  def time_string 
    Time.at(@seconds).utc.strftime("%X") #Preferred representation for  the time alone
  end 
end
