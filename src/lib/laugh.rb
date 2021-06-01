require 'json'
require 'tty-spinner'
require 'tty-prompt'
require 'tty-box'
require 'colorize'

require_relative 'display'

class Laugh

  attr_reader :jokes_array

  def initialize
    @prompt = TTY::Prompt.new(active_color: :yellow)
    @json_file_path = "./data/laugh/dad_jokes.json"
    @jokes_array = self.load_to_array
  end

  def display_intro
    puts "  Let some dad jokes entertain you!"
    linebreak
    wait
    puts "  Every dad joke has a set of two parts. They are displayed between"
    puts "  intervals of 4 seconds, allowing you time to digest the joke... "
    puts "  although you're not really supposed to think much about it!"
    linebreak
    wait_longer
  end
  
  def display_info_after_jokes
    display_app_header
    puts "  ｡ﾟ･ Hopefully, you were entertained in any way! ･ﾟ｡".bold
    linebreak
    wait_abit
    puts "  Whatever your response is (whether you found it hilarious, or lame),"
    puts "  make sure you respond to the jokes, even if it's with a groan!"
    linebreak
    wait_longer
    puts "  The same way we are learning to process and respond to our feelings"
    puts "  and emotions, however good or bad they are " + green_up(":-)")
    linebreak
    wait_longer
  end
  
  # Load .json file into an array
  def load_to_array
    json_file = JSON.parse(File.read(@json_file_path))
    @jokes_array = json_file.map do |joke|
      joke.transform_keys(&:to_sym)
    end
  rescue Errno::ENOENT
    File.open(@json_file_path, 'w+')
    File.write(@json_file_path, [])
    retry
  end

  def display_joke_menu
    display_app_header_laugh
    randomise_jokes
    
    loop do
      menu_input = @prompt.select(" ", cycle: true) do |menu|
        menu.choice "More jokes", 1
        menu.choice "Call it a day", 2
      end

      case menu_input
      when 1
        display_app_header_laugh
        randomise_jokes 
      when 2
        display_info_after_jokes
        break
      end
    end
  end

  def randomise_jokes 
    # Pick a random hash set from @jokes_array (parsed json file)
    random = @jokes_array[rand(0..50)]
    ask = div_up("#{random[:ask]}")
    ans = div_btm("#{random[:ans]}")
    
    # Display first part (:ask) 
    wait_abit
    puts ask
    # Display loading 
    loading_punchline
    puts
    # Display punchline (:ans) 
    puts ans
    puts
    linebreak
  end
  
  def loading_punchline
    text = "#{spacing(40)}:spinner".green
    spinner = TTY::Spinner.new(text, format: :toggle, hide_cursor: true)
    spinner.auto_spin
    
    sleep(4)
    
    # arrow = "  ⤋  ".green
    spinner.stop("")
  end
  
  private
  


end

# TESTING
