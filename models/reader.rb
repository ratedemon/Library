class Reader
  attr_accessor :id, :name, :email, :city, :street, :house

  def initialize(data)
    @id, @name, @email, @city, @street, @house = data
  end
end