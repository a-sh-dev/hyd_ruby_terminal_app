require 'tty-prompt'
require 'tty-box'
require 'tty-spinner'
require 'rainbow'
require 'colorize'
require 'espeak'
require 'tty-table'
require 'pastel'

require_relative 'methods'

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

table = TTY::Table.new(
  %w[No. Date. Feelings], # header
  [%w[1], %w[b1 b2], %w[c1 c2]])
puts table.render(:ascii) do |renderer|
renderer.border.separator = :each_row
end

pastel = Pastel.new
yellow = pastel.yellow.detach
header = [yellow.("Column 1"), yellow.("Column 2"), yellow.("Column 3")]
table = TTY::Table.new(header: header) do |t|
  t << %w[11 12 13]
  t << %w[21 22 23]
  t << %w[31 32 33]
end

puts table.render(:ascii, padding: [1, 2, 1, 2])