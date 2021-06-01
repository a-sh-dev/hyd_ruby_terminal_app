require 'json'
require 'tty-prompt'

require_relative 'display'
require_relative 'user'

class Log

  attr_reader :time, :user_today

  def initialize
    # @user = name_input
    # @file_path = "./data/users/#{@user}.json"
    @timestamp = Time.new.strftime("%y%m%d")
    @date = Time.new.strftime("%a, %d %b '%y")
    @user_today = {id: @timestamp.to_i, date: @date }
  end
  
  # Display 5 last entries, load from json
  def table
    
  end

  # check if file is empty, don't load
  # if file not empty, display by iterating the last fie entries

end


