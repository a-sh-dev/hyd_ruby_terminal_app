require 'colorize'
require 'rainbow'
require 'tty-prompt'
require_relative 'display'
require_relative 'log'

class User
  attr_reader :user, :user_cap

  def initialize(name_input)
    @user = name_input
    @user_cap = name_input.capitalize.light_yellow.bold
    @file_path = "./data/users/#{@user}.json"
  end

  #! Below's method doesn't work when combined in hyd_app.rb unfortunately, will revisit next time
  def get_input
    prompt = TTY::Prompt.new
    name_input = prompt.ask("  Choose a nickname >> ") do |q|
      q.required true
      q.validate(/^\w+$/)
      q.messages[:valid?] = "Please choose one-word without any symbols"
      q.modify   :down
    end
    username = User.new(name_input)
  end
  
  def check
    # Existing user?
    if File.exist?(@file_path)
      File.open(@file_path, 'r')
      display_app_header
      puts "  Welcome back, #{@user_cap}!"
      puts "  Glad to see you again!"
    else # New user
      file = File.new(@file_path, 'w')
      file.close
      display_app_header
      puts "  Glad that you're here, #{@user_cap}!"
      wait
      puts "  Every time you use this app, a log is created and is only"
      puts "  accessible by you to check on how you doin. So, when you"
      puts "  use the app next time, please make sure to remember the"
      puts "  name ⟾  #{@user_cap} that you've entered to login!"
      wait_abit
    end
  end

  def ask_feeling
    linebreak
    wait_abit
    puts "  So, how you doin (feeling) right now, #{@user_cap}?"
    linebreak
  end

  def display_feelings_menu

    prompt = TTY::Prompt.new(active_color: :yellow)
  
    choices = [
  
      {name: "Bored", value: 1},
      {name: "Just OK", value: 2},
      {name: "Happy", value: 3},
      {name: "Sad", value: 4},
      {name: "Stress", value: 5},
      {name: "Angry", value: 6}
  
      ]
    
      input = prompt.select("  Right now, I feel:", choices)

      log = Log.new
      # having difficulties using the return value from tty-prompt, hence manual input
      case input
      # user_alert
      when 4
        respond_alert

        # back-end log entry
    
        # log.user_alert << input  
      else # user_normal
        respond_normal
        
      end
  
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
  
  private

  def respond_alert
    linebreak
    wait
    puts "  That must be really hard for you, #{@user_cap}."
    wait_longer
    puts "  It's OK to be not OK."
    linebreak
    wait
    puts "  You've recognised how you're feeling today, and that's"
    puts "  a good start! Hope you will feel better soon, #{@user_cap}!"
    linebreak
    wait_longer
    puts "  Now, lets get ready for an entertainment!"
    linebreak
  end

  def respond_normal
    linebreak
    wait
    puts "  Let's get ready for an entertainment now, #{@user_cap}!"
    linebreak
  end

  #! When refractored, method doesn't work...
  def user_exists?
    File.exist?(@file_path)
    File.open(@file_path, 'r')
  end

  def user_new
    file = File.new(@file_path, 'w')
    file.close
  end
end