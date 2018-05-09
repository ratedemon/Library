require './bootstrap'

class Operations
  def best_reader
    puts "List of readers:"
    puts "Counter | Reader"
    $library.best_reader.each{|key, val|
      puts "#{val.length} | #{key}"
    }
    puts "\n"
  end

  def best_book
    puts "Best Book:"
    puts "Counter | Name"
    puts "#{$library.best_book[1].length} | #{$library.best_book[0]}"
    puts "\n"
  end

  def one_of_top_three
    puts "One of Top Three:"
    book = $library.one_of_top_three
    puts "#{book[:book]} was sold #{book[:count]} times"
  end
end