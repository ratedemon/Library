class Author
  attr_accessor :id, :name, :biography

  def initialize(data)
    @id = data[0].to_i
    @name = data[1]
    @biography = data[2]
  end
end