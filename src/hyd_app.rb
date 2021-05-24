# Welcome message greeting
require_relative './lib/ansi.rb'

def linebreak
  puts "------------------------------------------------"
end

# ------------------------------
#* MAIN 
# ------------------------------


def greeting
  system "clear"
  linebreak
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
def respond_user(username)
  name = username.capitalize
  linebreak
  # If new user, display new_welcome
  puts "(new) Hello, #{name}!\nGlad that you're here!" 
  linebreak
  # For existing user, display welcome_back
  puts "(existing) Hello, #{name}!\nWelcome back, glad that you're here!"
end

respond_user(username)

# Display info for log entry
def log_info
  linebreak
  puts "Every time you use this app,\n
  a log will be created to check on how you doin.\n
  The log is only accessible by you. So, make sure\n
  to remember the name you've entered!"
  # Ask how user's doing
  linebreak
  puts "Anyway... How you doin (feeling) today, #{username}?"
end

# Today's log entry
today = []
alert = []

# Options for user
# Store today's first entry in a hash
def log_first_entry
  # entry = {day: x, date: dd/mm/yy, before: "x", after: "x"}
  # background entry : day | dd/mm/yy
  
  # Options 
  # ALERT: - sad - stress - angry

  # NORMAL: - bored - just ok - happy
  
end

# Display recognising info
def respond_log_before
  linebreak
  puts "You've recognised how you're feeling today.\n
  That's a good start!"
end

respond_log_before

# ------------------------------
#* ENTERTAINMENT
# ------------------------------

# Options for Entertainment
linebreak
puts "Now, please choose from the following options:"
linebreak
puts "Let some dad jokes entertain you!"
# 1. How about a laugh?

# Not in the mood to laugh?
# 2. How about an encouragement?


#* Randomise laugh / entertainment

# Get response ☺ | ☹

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

# Bye message