require_relative './lib/display'
require_relative './lib/log'
require_relative './lib/user'
require_relative './lib/laugh'


# ------------------------------
#* GREETINGS & GET USER 
# ------------------------------

display_greeting
# get username

prompt = TTY::Prompt.new
name_input = prompt.ask("  Choose a nickname >> ") do |q|
  q.required true
  q.validate(/^\w+$/)
  q.messages[:valid?] = "Please choose one-word only without any symbols"
  q.modify   :down
end

username = User.new(name_input)
# check for existing user / create new
username.check_system

# ------------------------------
#* ASK USER'S COND & CREATE LOG  
# ------------------------------

username.ask_feeling
username.log_include("f_before")
username.check_alert_fbefore

# DEBUNGGING
# puts
# puts "  Check log_today outside -- #{username.log_today}"

ask_to_continue

# ------------------------------
#* ENTERTAINMENT – LAUGH
# ------------------------------

display_app_header_laugh

laugh = Laugh.new
laugh.display_intro
ask_to_continue
#* Randomise laugh / entertainment


laugh.display_info_after_jokes


# Implement json load -- and randomise jokes

# Options on every random output
# > More
# > Call it a day

# ------------------------------
#* CALL IT A DAY
# ------------------------------

# Display info
# Ask for user's feeling
username.ask_feeling

# Store & merge today's entry
# Display info & the log with last 5 entries
# Next option

# ------------------------------
#* MENTAL HEALTH DISPLAY
# ------------------------------

# --if in alert/concern category
# Check with user's alert/concern feeling
# Display it's ok to...
# Randomise mhealth display
# Display helpline

# ------------------------------
#* BYE
# ------------------------------

# username.bye
