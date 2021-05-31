require 'tty-prompt'
require 'tty-box'
require 'tty-spinner'
require 'rainbow'
require 'colorize'
require 'espeak'

require_relative 'display'

# TESTING GEMS!

border_text = "One's really heavy and the other's a little lighter."
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


# puts box1 + box2
line = "  --------------------------------------------------------------------"
puts Rainbow(line).color("8DEEA6")

puts "  Choose a nickname #{arrow}"


# Messagebox
# puts TTY::Box.info "Deploying application", top: 2, left: 2
# puts TTY::Box.success "Deploying application", top: 2, left: 29
# puts TTY::Box.warn "Deploying application", top: 8, left: 2
# puts TTY::Box.error "Deploying application", top: 8, left: 29

# puts
