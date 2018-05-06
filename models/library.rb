class Library
  attr_accessor :books, :orders, :readers, :authors
  def initialize(data)
    @books, @orders, @readers, @authors = data
  end
end