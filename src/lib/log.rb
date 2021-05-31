require 'json'
require 'tty-prompt'

require_relative 'display'
require_relative 'user'

class Log

  attr_reader :time, :file_path
  attr_accessor :user_today

  def initialize
    # @user = name_input
    @file_path = "./data/users/#{@user}.json"
    @id = Time.new.strftime("%y%m%d")
    @date = Time.new.strftime("%a, %d %b '%y")
    @user_today = {id: @id, time: @date }
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


