class Book
  attr_accessor :id, :title, :author

  def initialize(id, title, author)
    @id = id.to_i
    @title = title
    @author = author
  end

  def get_author

  end
end