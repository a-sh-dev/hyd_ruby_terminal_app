require 'json'
require 'tty-prompt'
require_relative 'display'
require_relative 'user'


# ------------------------------
# attributes:
# log id no
#   - time
#   - date dd/mm/yy
#   - day ddd
#   - feelings:
#     - before:   - after:

class Log

  
  # User's today log entry
  attr_reader :name, :time, :date, :day, :before, :after
  
  @@entry_no = 0

  def initialize
    @file_path = "./data/users/#{@user}.json"
    @time
    @date
    @day
    @feelings
    @user_today = {}
    @user_alert = []
    @@entry_no += 1
    
  end
  
  def self.entry_no
    @@entry_no
  end

  def create_today
    # If sad / stress / angry
    
  end
  
  # Add today's @user_today entry to json
  def merge_today_entry
    json file << user_today
  end
  
  # Display 5 last entries, load from json
  def display_entries
    
  end
  
  # determine user's condition
  def check_alert
    alert = ["sad", "stress", "angry"]
    
  end

end



