require 'tty-prompt'
require 'tty-box'
require 'tty-spinner'
require 'rainbow'
require 'colorize'
require 'espeak'

# TESTING GEMS!

class Test
  def initialize
    @box = TTY::Box.frame(left: 2, width: 45, height: 10, align: :center, padding: 3)
    @container = @box.light_blue 
    @loading = TTY::Spinner.new
  end


  def content1(string)
    box = TTY::Box.frame(left: 10, width: 45, height: 10, align: :center, padding: 3) do
      string
    end
    container = box.light_black
    print container
  end

  def content(string)
    content = string
    reveal_content = Rainbow(content).color("8DEEA6")
    puts reveal_content
    puts
  end

  def loading
    spinner = TTY::Spinner.new("  Revealing answer :spinner")
    spinner.auto_spin
    
    sleep 2 # Some long task
    
    # spinner.stop('done')
  end

end

def linebreak
  line = "  ---------------------------------------------------------------"
  puts Rainbow(line).color("8DEEA6")
end


test = Test.new
linebreak
test.content("  Why does the sky so blue")
test.loading
puts
puts
test.content("  Well, because it's blue!")
linebreak