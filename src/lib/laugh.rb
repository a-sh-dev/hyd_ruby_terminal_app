require 'json'
require 'tty-spinner'
require 'tty-prompt'
require 'tty-box'
require 'colorize'

require_relative 'display'

class Laugh

  attr_reader :jokes_array

  def initialize
    @json_file_path = "./data/laugh/dad_jokes.json"
    @prompt = TTY::Prompt.new(active_color: :yellow)
    
  end

  def display_intro
    puts "  Let some dad jokes entertain you!"
    linebreak
    wait
    puts "  Every dad joke has a set of two parts. When the first part"
    puts "  is displayed, the second will follow in 5 seconds, allowing"
    puts "  you time to digest the jokes... although you're not"
    puts "  really supposed to think much about the jokes!"
    linebreak
    wait_longer
  end

  def display_info_after_jokes
    display_app_header
    puts "  Hopefully, you were entertained in any way!"
    linebreak
    wait_abit
    puts "  Whatever your response is (whether you found it hilarious,"
    puts "  or lame), make sure you respond to the jokes, even with a groan!"
    linebreak
    wait_longer
    puts "  The same way we are learning to respond to our feelings"
    puts "  and emotions, however good or bad they are " + green_up(":-)")
    linebreak
    wait_longer
  end

  def display_joke_menu
    
  end
  
  def randomise_jokes 
    # Pick a random hash set from @jokes_array (parsed json file)
    random = @jokes_array[rand(0..50)]
    # container = 
    puts "  #{random[:ask]}"
    puts
    laugh.loading_punchline
    puts
    puts "  #{random[:ans]}"
  
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


  def loading_punchline
    text = "#{spacing(30)}:spinner".green
    spinner = TTY::Spinner.new(text, format: :flip, hide_cursor: true)
    spinner.auto_spin
    
    sleep(5)

    arrow = "  ⤋  ".green
    spinner.stop(arrow)
  end

  private
  
  def spacing(num)
    return " " * num
  end

  def div(content)
    border_text = content
    border = TTY::Box.frame(
      top: 3,
      left: 4,
      width: 64,
      height: 5,
      border: :light,
      align: :center,
      padding: [1,2],
      style: {border: {fg: :yellow}}
    ) { border_text.bold }
  end



end


# format_jokes = jokes.each do |joke|
#   puts joke
# joke.each do |id, ans, ask|
#   puts "  #{id}:  \n#{ans}\n  #{ask}"
# end
# end
def randomise  
  laugh = Laugh.new
  jokes = laugh.load_to_array
  puts 
  puts "This is @jokes_array var: #{laugh.jokes_array}"
  puts "............................"
  puts random = jokes[rand(0..50)]
  puts
  # container = 
  puts "  #{random[:ask]}"
  puts
  laugh.loading_punchline
  puts
  puts "  #{random[:ans]}"
end

line = "  --------------------------------------------------------------------"
puts
puts line

randomise
puts line
# randomise