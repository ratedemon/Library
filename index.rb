require './bootstrap'

puts 'This is a library application.'
puts 'You can select f'

while true do
  puts 'Select operation'
  operation = gets.chomp
  break if operation == 'exit'

end