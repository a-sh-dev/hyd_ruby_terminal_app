require_relative './lib/display'
require_relative './lib/log'
require_relative './lib/user'
require_relative './lib/laugh'


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
username.check_alert_fafter

puts "  ====== CHECKING ======="
puts "  username.log_today --> #{username.log_today}"
puts "  ====== END CHECKING ======="



# Display log with 5 last entries

# ask_to_continue

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
