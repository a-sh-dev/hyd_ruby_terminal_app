require_relative './lib/display'
require_relative './lib/log'
require_relative './lib/user'


# ------------------------------
#* GREETINGS & GET USER 
# ------------------------------

display_greeting
# get username
# tried to validate using a method & tty-prompt (check display.rb > Prompt)
print "  Choose a nickname >> "
name_input = gets.strip.downcase
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
display_app_header_laugh

# ------------------------------
#* ENTERTAINMENT – LAUGH
# ------------------------------

laugh = Laugh.new
laugh.display_info



#* Randomise laugh / entertainment

# Implement json load -- and randomise jokes

# Get response ☺ | ☹ -- is this needed?

# Options on every random output
# > More
# > How about a laugh/an encouragement instead?
# > Call it a day

# ------------------------------
#* CALL IT A DAY
# ------------------------------

# Display info
# Ask for user's feeling
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
