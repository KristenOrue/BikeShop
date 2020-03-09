require_relative 'Bike'

class Customer
  def initialize(username, password, credit_card)
    puts("created #{username} user")
    @username = username
    @password = password
    @credit_card = credit_card
    @rented = []
  end
  def rent(bike)
    if bike.is_rentable()
      bike.rentout()
      @rented << bike
    else
      puts("the bike is not rentable")
    end
  end

  def return(bike)
    bike.make_rentable()
    @rented.delete_at(@rented.index(bike))
  end
end
