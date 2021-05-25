# Welcome message greeting
require_relative './lib/ansi.rb'

# current dash count = 55 characters
def linebreak
  puts "-------------------------------------------------------"
end

# ------------------------------
#* MAIN 
# ------------------------------

def greeting
  system "clear"
  linebreak
  # replace with Artii
  puts "Hello!"
  linebreak
  puts "Welcome to the 'How You Doin?' (HYD) app."
  puts "Before we begin, please enter a nickname\nthat you can remember easily next time."
  linebreak
end

# Ask user for nickname
greeting
print "Choose a nickname >> "
# Get user input
username = gets.strip.downcase 

# Load / Create user -- fetch any existing user
def respond_to_user(username)
  name = username.capitalize
  linebreak
  # If new user, display new_welcome
  puts "(new) Hello, #{name}! Glad that you're here!" 
  linebreak
  puts "Every time you use this app,\na log will be created to check on how you doin.\nThe log is only accessible by you. So, make sure\nto remember the name you've entered!"
  # Else existing user, display welcome_back
  puts "(existing) Welcome back, #{name}!\nGlad to see you again!"
end

respond_to_user(username)

# User's today log entry
# {day: x, date: dd/mm/yy, before: "x", after: "x"}
user_today = []
# If sad / stress / angry
alert = [:sad, :stress, :angry]
user_alert = []

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
def respond_to_log_before
  linebreak
  # if alert : sad / stress / angry
  puts "That must be really hard for you."
  puts "It's OK to be not OK."
  puts "You've recognised how you're feeling today, and\nthat's a good start! Hope you will feel better soon!" 
  # else : normal category
  puts "Get ready for an entertainment!"
end

respond_to_log_before

# ------------------------------
#* ENTERTAINMENT
# ------------------------------

# Options for Entertainment
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
linebreak
puts "Thank you for using the HYD app."
puts "See you next time, #{username}!"
linebreak
puts "For further info, please check the documentation."
puts "Crafted with ❤ by a-sh. 2021"