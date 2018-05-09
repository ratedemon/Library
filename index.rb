require './operations'

puts "This is a library application.\n\n"
puts "Print 'exit' to exit application"
puts 'You can select one of this operations:'
puts '1. Who often takes the book'
puts '2. What is the most popular book'
puts '3. How many people ordered one of the three most popular books'

$operation = Operations.new

while true do
  puts 'Select operation:'
  operation = gets.chomp
  break if operation == 'exit'
  puts "\n"
  case operation.to_i
  when 1 then$operation.best_reader
  when 2 then $operation.best_book
  when 3 then $operation.one_of_top_three
  else
    puts "Wrong operation"
  end
end
