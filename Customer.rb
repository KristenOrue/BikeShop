require_relative 'Bike'

class Customer
  def initialize(username, password, credit_card)
    puts("created #{username} user")
    @username = username
    @password = password
    @credit_card = credit_card
    @rented = []
  end
  def rent(object)
    if object.is_rentable()
      object.rentout()
      @rented << bike
    else
      puts("This is not rentable")
    end
  end

  def return(object)
    object.return_back()
    @rented.delete_at(@rented.index(object))
  end
end
