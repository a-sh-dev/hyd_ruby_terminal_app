require 'colorize'
require 'rainbow'
require 'tty-prompt'
require 'tty-spinner'

require_relative 'methods'
require_relative 'log'
require_relative 'mhealth'

class User
  attr_reader :user_cap, :log_today, :log_array
  attr_accessor :user

  def initialize(name_input)
    @user = name_input
    @user_cap = @user.capitalize.light_yellow.bold
    @file_path = "./data/users/#{@user}.json"
    @prompt = TTY::Prompt.new(active_color: :yellow)
    @mhealth = MHealth.new
    @log = Log.new
    @log_today = @log.user_today
    @log_array = []  
  end

  def check_system
    # Existing user?
    if existing_user
      display_app_header
      puts "  ｡ﾟ･ Welcome back, #{@user_cap}! ･ﾟ｡".bold
      puts "  Glad to see you again!"
      linebreak
    else # Create new user
      new_user
      display_app_header
      puts "  ｡ﾟ･ Glad that you're here, #{@user_cap}! ･ﾟ｡".bold
      linebreak
      wait
      puts "  Every time you use this app, a log is created and is only accessible by you"
      puts "  to check on how you doin. So, when you use the app next time, please make sure"
      puts "  to remember the name ⟾  #{@user_cap} that you've entered to login!"
      linebreak
      wait_longer
      wait_abit
    end
  end

  def ask_feeling
    wait_abit
    puts "  So, how you doin (feeling) right now, #{@user_cap}?"
    linebreak
  end

  # connect with Log to ask (feeling) f_before and f_after
  def log_include(f_cond)

    collected_input = @prompt.collect do
      key(f_cond.to_sym).select("  Right now, I feel:", %w(Bored Average Happy Anxious Sad Stress), cycle: true)
    end

    # back-end - update user_today log
    @log_today = @log_today.merge(collected_input)

  end

  # respond to Feeling :BEFORE
  def check_alert_fbefore
    alert = ["Sad", "Stress", "Anxious"]
    user_alert = @log_today[:f_before]
    # compare user's input with 'alert' to respond    
    if alert.count(user_alert) == 1
      respond_alert_fbefore
    else
      respond_normal_fbefore
    end
  end
  
  # respond to Feeling :AFTER - if yes call mhealth
  def check_alert_fafter
    alert = ["Sad", "Stress", "Anxious"]
    user_alert = @log_today[:f_after]
    # compare user's input with 'alert' to respond    
    if alert.count(user_alert) == 1
      # call mhealth
      @mhealth.respond(@user)
      @mhealth.helpline(@user)
    end
  end

  def display_log
    linebreak
    wait_abit
    puts "  Finalising your log entry. Your log entries will be displayed shortly..."
    linebreak
    # back-end load & save
    save_today_entry
    ask_to_continue
    display_app_header_log(@user_cap)
    puts
    puts
    @log.display_entries(@log_array)
    puts
    puts
  end

  def save_today_entry
    unless file_empty?
      # for existing logs, load data first into an array > 'json_data_to_array' is in methods.rb
      @log_array = self.json_data_to_array(@file_path, @log_array)

      add_today_log_to_array
    else      
      # when file is empty
      add_today_log_to_array
    end 
    # save data to json
    File.write(@file_path, @log_array.to_json)
  end

  # Exit message
  def bye
    display_app_header_bye
    puts
    puts
    puts "  See you next time, #{@user_cap}!"
    puts
    puts
    linebreak
    puts "  For further info about this app, please check the documentation."
    by_ash = "  Crafted with ❤ by a-sh. © 2021"
    puts Rainbow(by_ash).color("8DEEA6")
    linebreak
    puts
    puts
  end
  
  private

  def add_today_log_to_array
    temp_array = @log_today
    @log_array << temp_array
  end

  def existing_user
    File.exist?(@file_path)
  end

  def new_user
    file = File.new(@file_path, 'w')
    file.close
  end

  def file_empty?
    File.zero?(@file_path)
  end

  # if user's feeling in the alert / concern category
  def respond_alert_fbefore
    linebreak
    wait
    puts "  " + green_up(":-(") + "  That must be really hard for you, #{@user_cap}."
    wait_long
    puts "  It's OK to be not OK."
    linebreak
    wait
    puts "  You've recognised how you're feeling today, and that's a good start!"
    puts "  Take your time to process it and hopefully you will feel better soon!"
    linebreak
    wait_longer
    puts "  Now, lets get ready for an entertainment!"
    linebreak
  end

  def respond_normal_fbefore
    linebreak
    wait
    puts "  Then let's get ready for an entertainment, #{@user_cap}!"
    linebreak
  end

end