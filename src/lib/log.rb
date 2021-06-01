# require 'json'
# require 'tty-prompt'

require_relative 'methods'
require_relative 'user'

class Log

  attr_reader :date
  attr_accessor :timestamp, :user_today

  def initialize
    @timestamp = Time.new.strftime("%y%m%d%k%M")
    @date = Time.new.strftime("%a, %d %b '%y")
    @user_today = {id: @timestamp.to_i, date: @date }
  end
  
  def display_entries(array)
    # sort the entries first
    sorted_log = array.sort_by { |entry| entry[:id] }.reverse
    # display by iterating up to 5 entries
    sorted_log.each_with_index do |(key, value), index|
      linerow(60)
      no = "#{index +1}.".bold
      no_g = green_up(no)
      arrow = green_up(" ⇢ ")
      puts "    #{no_g} #{key[:date]} #{arrow} Feelings: #{key[:f_before]} & #{key[:f_after]}"
      break if index == 4
    end
    linerow(60)
  end

end


