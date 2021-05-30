require 'artii'
require 'rainbow'
require 'colorize'
require 'TTY-prompt'

require_relative 'log'
require_relative 'user'

class Title
  
  def initialize
    # @title_base = Artii::Base.new :font => 'slant'
    @title_base = Artii::Base.new
  end

  # Title standard single line
  def title(heading)
    # system "clear"
    title = @title_base.asciify(heading) 
    puts
    puts Rainbow(title).color("8DEEA6") 
  end

  # Title 2 lines
  def title2l(line1, line2)
    # system "clear"
    title1 = @title_base.asciify(line1) 
    title2 = @title_base.asciify(line2)
    title = title1 + "\n" + title2 
    puts
    puts Rainbow(title).color("8DEEA6") 
    puts
  end

end

# Rainbow(text).color("C5AEEE")  
# color list (HEX):
# Calm Light Green - color("8DEEA6")
# Deep Blue - color("5257BA")
# Sky of Ocean - color("82CDE5")
# Calm Brown - color("907D79")
# Deep Olive - color("677762")
# Lilac - color("C5AEEE")
# Grey - color("C9C9C9")
# Dark GreenGrey - color("3F4D49")

# ------------------------------
#* UI Elements 
# ------------------------------

# current dash count = 68 characters + 2 for spacing --> 70
def linebreak
  line = "  --------------------------------------------------------------------"
  puts Rainbow(line).color("8DEEA6")
end

def refresh
  system "clear"
  # sleep(1)
end

def green_up(string)
  Rainbow(string).color("8DEEA6")
end

# ------------------------------
#* Display 
# ------------------------------

def display_app_header
  system "clear"
  logo = Title.new
  logo.title(" HowYouDoin?")
  linebreak
end

def display_app_header_laugh
  system "clear"
  logo = Title.new
  logo.title(" Dad Jokes")
  linebreak
  subtitle = "  How about a laugh?".bold
  # puts green_up(subtitle)
  puts subtitle
  linebreak
end

# Welcome message greeting
def display_greeting
  display_app_header
  puts "  Welcome to the 'How You Doin?' (HYD) app."
  linebreak
  puts "  Before we begin, please enter a one-word nickname that"
  puts "  you can remember easily next time."
  linebreak
end

def display_refresh
  
end

def wait_abit
  sleep(0.5)
end

def wait
  sleep(1.25)
end

def wait_long
  sleep(1.5)
end

def wait_longer
  sleep(2.5)
end

# ------------------------------
#* Prompt 
# ------------------------------

def ask_to_continue
  prompt = TTY::Prompt.new(active_color: :yellow)
  continue = prompt.keypress("  >> Press any key to continue")
  continue.light_green.bold
end

#! Below's method doesn't work when called in hyd_app.rb as a method unfortunately -- local variable issue.
def get_input
  prompt = TTY::Prompt.new
  name_input = prompt.ask("  Choose a nickname >> ") do |q|
    q.required true
    q.validate(/^\w+$/)
    q.messages[:valid?] = "Please choose one-word only without any symbols"
    q.modify   :down
  end
  # username = User.new(name_input)
end

#! Re-attempting above validation without tty-prompt. Still unsuccessful - undefined local method error - I tried to declare the name_input in the parameter but still unsuccessful when passed as argument! -- when I tried to declare name_input = "" above the method, User class coulnd't recognise the input after below's method is executed and return with empty string.
def get_and_validate_username_input(name_input)
  # Get user's input
  print "  Choose a nickname >> "
  name_input = gets.strip.downcase
  # Validating input to be one word only without any symbols
  if name_input.match(/^\w+$/)
  else
    puts "  Please choose one-word only without any symbols".red
    get_and_validate_username_input(name_input)
  end
end

# ------------------------------
#* Unused 
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