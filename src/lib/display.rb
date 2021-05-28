require 'artii'
require 'rainbow'
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

# current dash count = 58 characters + 2 for spacing --> 60
def linebreak
  line = "  ----------------------------------------------------------"
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

def wait
  sleep(1)
end




def display_feelings_menu(prompt)
  choices = [
    {name: "Bored", value: 1},
    {name: "Just OK", value: 2},
    {name: "Happy", value: 3},
    {name: "Sad", value: 4},
    {name: "Stress", value: 5},
    {name: "Angry", value: 6}
    ]
  
    ask = prompt.select("  I feel:", choices)
    Rainbow(ask).color("8DEEA6")
end
