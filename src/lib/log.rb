class Log
  attr_accessor :name, :time, :date, :day, :before, :after

  def initialize(time, date, day, before, after)
      
  end

end

today = Log.new()
today.name = "Bobo"
today.time = Time.new
today.before = "sad"

puts today