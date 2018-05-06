require 'csv'
require './models/book'
require './models/author'
require './models/reader'
require './models/order'
require './models/library'

# puts Dir.entries('data/library')
$books = []
$authors = []
$readers = []
$orders = []

def findAuthor(id)
  return $authors.find{|author|
    author.id == id
  }
end

def findBook(id)
  return $books.find{|book|
    book.id == id
  }
end

CSV.foreach('data/library/author.csv') do |row|
  $authors.push(Author.new(row))
end

CSV.foreach('data/library/book.csv') do |row|
  $books.push(Book.new(row[0], row[1], findAuthor(row[2].to_i)))
end

CSV.foreach('data/library/reader.csv') do |row|
  $readers.push(Reader.new(row))
end

unless(File.exist?('data/library/order.csv'))
  puts 'order.csv creating'
  CSV.open('data/library/order.csv', 'w') do |csv|
    50.times do |i|
      csv << [i+1, rand(1..$books.length), rand(1..$readers.length), Time.at(rand * Time.now.to_i)]
    end
  end
end

CSV.foreach('data/library/order.csv') do |row|
  $orders.push(Order.new([row[0], findBook(row[1].to_i), findAuthor(row[2].to_i), row[3]]))
end

$library = Library.new([$books, $orders, $readers, $authors])


# $books.each {|x|
#   puts x.inspect
# }
# $orders.each {|x|
#   puts x.inspect
# }



# puts "Enter A"
# a = gets.chomp
# puts "Enter B"
# b = gets.chomp
# c = a.to_i + b.to_i
# puts c