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

# current dash count = 63 characters + 2 for spacing --> 65
def linebreak
  line = "  ---------------------------------------------------------------"
  puts Rainbow(line).color("8DEEA6")
end

def refresh
  system "clear"
  # sleep(1)
end

def display_app_header
  system "clear"
  logo = Title.new
  logo.title(" H Y D ?")
  linebreak
end

def display_app_header_laugh
  system "clear"
  logo = Title.new
  logo.title(" Dad Jokes")
  linebreak
  subtitle = "  How about a laugh?".bold
  puts green_up(subtitle)
  linebreak
end

def green_up(string)
  Rainbow(string).color("8DEEA6")
end

# ------------------------------
#* Display 
# ------------------------------

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