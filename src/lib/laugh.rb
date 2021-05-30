require 'json'
require 'tty-spinner'

require_relative 'display'

class Laugh
  def initialize
    @file_path = "./data/laugh/dad_jokes.json"
    @jokes_array = []
  end

  def display_intro
    puts "  Let some dad jokes entertain you!"
    wait
    linebreak
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
    puts "  and emotions, however good or bad they are :-)"
    linebreak
    wait_longer
  end

  def load_to_array
    
  end

  def randomise_jokes
    
  end

  def reveal_answer
    
  end

  def loading_answer
    spinner = TTY::Spinner.new("  Revealing the rest in a moment...  :spinner")
    spinner.auto_spin
    
    sleep 7 # Some long task
    
    spinner.stop('*:.｡.＼(＾▽＾)／.｡.:*')
  end

  private


end

