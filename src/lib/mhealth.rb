require_relative 'methods'

class MHealth

  def initialize
    @arrow_right = green_up(" → ".bold)
    @tick = green_up(" ✓ ".bold)
  end
  
  def respond(user)
    display_app_header_mhealth(user)
    wait_abit
    linerow_yellow(74)
    puts "    #{@tick} #{"Acknowledge".bold} your feelings  #{@tick} #{"Listen".bold} to your feelings"
    puts "    #{@tick} #{"Embrace".bold} your feelings      #{@tick} #{"Accept".bold} your feelings"
    linerow_yellow(74)
    wait
    puts "    #{@tick} #{"Process your throughts".bold}."
    puts "        It's easy to feel overwhelmed with all you're feeling and thinking."
    puts "        Writing things down is one of the best way to do that."
    linerow_yellow(74)
    wait
    puts "    #{@tick} #{"Take care of your body".bold}."
    puts "        Eat a nutritious diet, getting enough sleep, staying hydrated, and"
    puts "        exercising regularly, even if it’s only a few minutes of stretching!"
    linerow_yellow(74)
    wait
    puts "    #{@tick} #{"Know it will take time".bold}."
    puts "        Focus on healing one step at a time. Remember: recovery isn’t linear,"
    puts "        and it’s normal to have bad days and setbacks. It doesn’t mean you’re"
    puts "        failing – it’s just part of the process."
    linerow_yellow(74)
    puts
    wait
    wait_longer
    ask_to_continue
  end
  
  def helpline(user)
    display_app_header_mhealth(user)
    wait_abit
    puts
    puts
    linerow_yellow(74)
    puts "    #{@tick} #{"Connect with people & don't feel ashamed to ask for help".bold}."
    puts "        If you need to speak to someone confidentially, helpline is available."
    linerow_yellow(74)
    puts
    puts "    #{@tick} #{"Call Helpline now".bold} #{@arrow_right} #{"13 11 14".bold}"
    puts
    linerow_yellow(74)
    puts
    puts
    ask_to_continue
    puts
  end

end