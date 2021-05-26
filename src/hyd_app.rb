require_relative './lib/respond'
require_relative './lib/display'
require_relative './lib/log'
require_relative './lib/user'


# ------------------------------
#* MAIN 
# ------------------------------

# lib/display.rb
display_greeting
# get username
print "  Choose a nickname >> "
name_input = gets.strip.downcase
username = User.new(name_input)
# check new / existing user
username.check

# Options for user
# Store today's first entry in a hash
def log_entry
  linebreak
  puts "So, how you doin (feeling) today, #{username}?"
  # back-end entry : day | dd/mm/yy {day: x, date: dd/mm/yy}
  
  # Options 
  # ALERT: - sad - stress - angry

  # if in ALERT, store it in the alert array

  # NORMAL: - bored - just ok - happy

  # store all data in the today's array (:before)
end

# Display recognising info
def respond_to_log
  linebreak
  # if alert : sad / stress / angry
  puts "That must be really hard for you."
  puts "It's OK to be not OK."
  puts "You've recognised how you're feeling today, and\nthat's a good start! Hope you will feel better soon!" 
  # else : normal category
  puts "Get ready for an entertainment!"
end

# ------------------------------
#* ENTERTAINMENT
# ------------------------------

# Options for Entertainment
def entertainment
  linebreak
  puts "Now, please choose from the following options:"
  linebreak
  # option 1
  # puts "Let some dad jokes entertain you!"
  puts "1. How about a laugh?"
  # option 2
  # puts "Not in the mood to laugh?"
  puts "2. How about an encouragement?"
  # ask user input
  
end



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

display_bye(username)
