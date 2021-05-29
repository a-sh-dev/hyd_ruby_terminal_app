require 'json'
require 'tty-prompt'
require_relative 'display'
require_relative 'user'

# ------------------------------
# attributes:
# log id no
#   - time
#   - date dd/mm/yy
#   - feelings:
#     - before:   - after:

class Log
  # User's today log entry
  attr_accessor :user_alert
  attr_reader :time, :user_today
  
  # @@alert = ["angry", "stress", "sad"]

  def initialize
    @file_path = "./data/users/#{@user}.json"
    @date = Time.new.strftime("%a, %d %b '%y")
    @user_today = {time: @date }
    @prompt = TTY::Prompt.new(active_color: :yellow)
    
  end




  def check_alert_after
    @@alert.each do |feeling|
      if @user_today[:f_after] == feeling
      puts "  --> It's ok to be not OK!" end
      end
  end
  
  # Add today's @user_today entry to json
  def merge_today_entry
    json file << @user_today
  end
  
  # Display 5 last entries, load from json
  def display_entries
    
  end
  
  # determine user's condition
  def check_alert
    alert = ["sad", "stress", "angry"]
    
  end

end



