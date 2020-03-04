class Bike
  attr_reader :type, :rentable, :id, :tires, :chain
  
  def initialize(type, id)
    puts("added a #{type} bike")
    @type = type
    @rentable = true
    @id = id
    @tires = 5
    @chain = 5


  end

  def is_rentable
    puts("bike is rentable")
    return @rentable
  end

  def rentout
    puts("bike has been rented")
    @rentable = false
  end

  def return_back
    puts("bike has been returned")
    @rentable = true
  end

  def print_self
    puts("this bike is a #{@type} byke")
  end
end
