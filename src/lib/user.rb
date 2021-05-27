require 'colorize'
require 'rainbow'
require_relative 'display'

class User
  attr_reader :user
  def initialize(name_input)
    @user = name_input
    @user_cap = name_input.capitalize.light_yellow.bold
    @file_path = "./data/users/#{@user}.json"
  end

  def check
    # Existing user?
    if user_exists?
      display_app_header
      puts "  Welcome back, #{@user_cap}!"
      puts "  Glad to see you again!"
    else # New user
      user_new
      display_app_header
      puts "  Glad that you're here, #{@user_cap}!" 
      puts "  Every time you use this app, a log is created and is only"
      puts "  accessible by you to check on how you doin. So, when you"
      puts "  use the app next time, please make sure to remember"
      puts "  the name ⟾  #{@user_cap} that you've entered!"
    end
  end

  def ask_today
    
  end

  def user_exists?
    File.exist?(@file_path)
    File.open(@file_path, 'r')
  end

  def user_new
    file = File.new(@file_path, 'w')
    file.close
  end

  # Exit message
def bye
  linebreak
  puts "  Thank you for using the HYD app."
  puts "  See you next time, #{@user_cap}!"
  linebreak
  puts "  For further info, please check the documentation."
  by_ash = "  Crafted with ❤ by a-sh. © 2021"
  puts Rainbow(by_ash).color("8DEEA6")
end

def to_s
    return "User's name is ⟾ #{@user} or #{@user_cap}"
end

end