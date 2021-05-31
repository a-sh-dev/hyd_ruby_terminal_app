require 'json'
require 'tty-prompt'

require_relative 'display'
require_relative 'user'

class Log

  attr_accessor :user_alert
  attr_reader :time, :user_today

  def initialize
    @file_path = "./data/users/#{@user}.json"
    @date = Time.new.strftime("%a, %d %b '%y")
    @user_today = {time: @date }
    @prompt = TTY::Prompt.new(active_color: :yellow)
    
  end
  
  # Add today's @user_today entry to json
  def merge_today_entry
    json file << @user_today
  end
  
  # Display 5 last entries, load from json
  def display_entries
    
  end


end



