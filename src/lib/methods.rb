require 'rainbow'
require 'colorize'
require 'tty-prompt'
require 'tty-font'
require 'tty-box'

require_relative 'log'
require_relative 'user'
# require_relative 'ascii_art'

class Title
  
  def initialize
    @font = TTY::Font.new(:doom)  
  end

  # Title standard single line
  def title(heading)
    # system "clear"
    title = @font.write(heading) 
    puts
    puts Rainbow(title).color("8DEEA6") 
  end

end

# color list (HEX):
# Calm Light Green - color("8DEEA6") << PRIMARY COLOR

# ------------------------------
#* GENERAL METHODS W/O CLASS
# ------------------------------

  def json_data_to_array(file_path, array)
    json_file = JSON.parse(File.read(file_path))
    array = json_file.map do |data|
      data.transform_keys(&:to_sym)
    end
  rescue Errno::ENOENT
    File.open(file_path, 'w+')
    File.write(file_path, [])
    retry
  end

# ------------------------------
#* UI Elements 
# ------------------------------

def linebreak
  line = "  " + ("-" * 78)
  puts Rainbow(line).color("8DEEA6")
end

def linerow(num)
  line = "    " + ("-" * num)
  # puts Rainbow(line).color("C9C9C9")
  puts line.green
end

def linerow_yellow(num)
  line = "    " + ("-" * num)
  # puts Rainbow(line).color("C9C9C9")
  puts line.yellow
end

def spacing(num)
  return " " * num
end

def arrow
  return "➤ "
end

def green_up(string)
  Rainbow(string).color("8DEEA6")
end

# Frame box / container
def div_up(content)
  border_text = content
  border = TTY::Box.frame(
    top: 13,
    left: 8,
    width: 66,
    height: 5,
    border: :light,
    align: :center,
    padding: [1,2],
    style: {border: {fg: :yellow}}
  ) { border_text.bold }
end

def div_btm(content)
  border_text = content
  border = TTY::Box.frame(
    top: 19,
    left: 8,
    width: 66,
    height: 5,
    border: :light,
    align: :center,
    padding: [1,2],
    style: {border: {fg: :yellow}}
  ) { border_text.bold }
end

# ------------------------------
#* Display 
# ------------------------------

def display_app_header
  system "clear"
  logo = Title.new
  logo.title("  HowYouDoin?")
  linebreak
end

def display_app_header_laugh
  system "clear"
  logo = Title.new
  logo.title("  DadJokes")
  linebreak
  puts "  ｡ﾟ･ How about a laugh? ･ﾟ｡".bold
  linebreak
end

def display_app_header_log(user)
  system "clear"
  logo = Title.new
  logo.title("  LogEntries")
  linebreak
  puts "  ｡ﾟ･ How #{user} is doing in the last 5 days of using this app ･ﾟ｡".bold
  linebreak
end

def display_app_header_mhealth(user)
  system "clear"
  logo = Title.new
  logo.title("  SelfCare")
  linebreak
  puts "  ｡ﾟ･ Here are some tips for looking after yourself, #{user}･ﾟ｡".bold
  linebreak
end

def display_app_header_bye
  system "clear"
  logo = Title.new
  logo.title("  TakeCare!")
  linebreak
  puts  "  ｡ﾟ･ Thank you for using the HYD app! ･ﾟ｡".bold
  linebreak
end

# Welcome message greeting
def display_greeting
  display_app_header
  puts "  ｡ﾟ･ Welcome to the 'How You Doin?' (HYD) app ･ﾟ｡".bold
  linebreak
  puts "  Before we begin, please enter a one-word nickname that"
  puts "  you can remember easily next time."
  linebreak
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
  prompt_text = green_up("  #{arrow}Press any key to continue")
  prompt.keypress(prompt_text)
end

# ------------------------------
#* Unused 
# ------------------------------

#! Without tty-prompt. Unsuccessful - undefined local method
#! error - Despite declaring the name_input in the parameter, 
#! it's still unsuccessful when argument is passed! -- Also 
#! tried declaring name_input = "", User class coulnd't
#! recognise the input with below's method and return an empty string.
def get_and_validate_username_input(name_input)
  # Get user's input
  print "  Choose a nickname #{arrow}"
  name_input = gets.strip.downcase
  # Validating input to be one word only without any symbols
  if name_input.match(/^\w+$/)
  else
    puts "  Please choose one-word only without any symbols".red
    get_and_validate_username_input(name_input)
  end
end


