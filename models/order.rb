require 'time'

class Order
  attr_writer :book, :reader
  attr_reader :date

  def initialize(book, reader, date)
    @book = book
    @reader = reader
    @date = Time.now
  end
end