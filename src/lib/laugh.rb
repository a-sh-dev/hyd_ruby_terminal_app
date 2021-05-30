require 'json'
require 'tty-spinner'
require 'tty-box'
require 'colorize'

# require_relative 'display'

class Laugh
  def initialize
    @json_file_path = "./data/laugh/dad_jokes.json"
    @jokes_array = []
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

  def randomise_jokes
    
  end

  def display_joke
    
  end

  def reveal_answer
    
  end

  def loading_answer
    text = "    :spinner".green
    spinner = TTY::Spinner.new(text, format: :flip, hide_cursor: true)
    spinner.auto_spin
    
    sleep(5) # Some long task
    # kaomoji_yay = green_up("  *:.｡.＼(＾▽＾)／.｡.:*")

    arrow = "  ⤋  ".green
    spinner.stop(arrow)
  end

  private


end


# format_jokes = jokes.each do |joke|
#   puts joke
# joke.each do |id, ans, ask|
#   puts "  #{id}:  \n#{ans}\n  #{ask}"
# end
# end
def randomise
  loaded = Laugh.new
  jokes = loaded.load_to_array
  puts 
  puts random = jokes[rand(0..50)]
  puts
  puts "  #{random[:ask]}".bold
  puts
  loaded.loading_answer
  puts
  puts "  #{random[:ans]}".bold
end

randomise
randomise