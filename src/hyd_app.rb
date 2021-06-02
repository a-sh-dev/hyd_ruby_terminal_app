require_relative './lib/methods'
require_relative './lib/user'
require_relative './lib/laugh'

# --------------------------------------
#* ARGV HANDLING 
# --------------------------------------

if ARGV.length > 0
  flag, *rest = ARGV
  ARGV.clear
  case flag 
  when '-help'
    puts 
    puts "  Hello! Welcome to How You Doin (HYD) app help & info section"
    puts
    puts "  There isn't much instructions to give to use the app,"
    puts "  other than to just follow along the prompts."
    puts 
    puts "  When you're ready, please type '-hyd', or './hyd_app.sh'"
    puts
    puts "  Alternatively, you can type './hyd_app.sh', and make sure permission is allowed"
    puts "  Type 'chmod +x hdy_app.sh to give permission. Hope you enjoy it!"
    linebreak
    puts "  For further info, please check the github README.md"
    puts "  Part of Coder Academy Ruby T1A3 assingment."
    puts "  Crafted with ❤ by a-sh. © 2021"
    linebreak
  when '-hyd'
    ruby hyd_app.rb
  else
    puts "  Invalid option, type '-help', '-h', or '-hyd' to start the app."
  end 
end 

# --------------------------------------
#* GREETINGS & GET USER 
# --------------------------------------

display_greeting

# get username
prompt = TTY::Prompt.new
prompt_text = green_up("  Choose a nickname #{arrow}")
name_input = prompt.ask(prompt_text) do |q|
  q.required true
  q.validate(/^\w+$/)
  q.messages[:valid?] = "Please choose one-word only without any symbols".red
  q.modify   :down
end
# set username
username = User.new(name_input)
# check for existing user / create new
username.check_system

# --------------------------------------
#* ASK USER'S COND & CREATE TODAY's LOG  
# --------------------------------------

username.ask_feeling
username.log_include("f_before")
username.check_alert_fbefore
ask_to_continue

# --------------------------------------
#* ENTERTAINMENT – LAUGH
# --------------------------------------

display_app_header_laugh
laugh = Laugh.new
laugh.display_intro
ask_to_continue

# Laugh menu & randomise jokes
begin
  laugh.display_joke_menu
rescue Interrupt, Errno::EINTR => e
  puts "Oops, an error occured: #{e}."
  retry
end
# --------------------------------------
#* CALL IT A DAY & DISPLAY LOG ENTRIES
# --------------------------------------

# Ask for user's feeling (f_after)
username.ask_feeling
username.log_include("f_after")

# Display log with 5 last entries
wait_abit
begin
  username.display_log
rescue Interrupt, Errno::EINTR => e
  puts "Oops, an error occured: #{e}."
  retry
end
ask_to_continue

# ------------------------------
#* MENTAL HEALTH DISPLAY
# ------------------------------

begin
  username.check_alert_fafter
rescue Interrupt, Errno::EINTR => e
  puts "Oops, an error occured: #{e}."
  retry
end

# ------------------------------
#* BYE
# ------------------------------

username.bye
