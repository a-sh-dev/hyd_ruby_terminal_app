require 'json'
require 'tty-prompt'
require_relative 'display'
require_relative 'user'

class Log
  # If sad / stress / angry
  
  # User's today log entry
  # {day: x, date: dd/mm/yy, before: "x", after: "x"}
  user_today = []
  alert = ["sad", "stress", "angry"]
  user_alert = []
  attr_accessor :name, :time, :date, :day, :before, :after

  def initialize(time, date, day, before, after)

      
  end

  def create_today
    
  end

end



