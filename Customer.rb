require_relative 'Bike'

class Customer
  attr_reader :credit_card

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

  def charge(payment)
    @credit_card -= payment
    puts "customer charged #{payment}"
  end
end
