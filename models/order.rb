require 'time'

class Order
  attr_accessor :id, :book, :reader, :date

  def initialize(data)
    @id, @book, @reader, @date = data
  end
end