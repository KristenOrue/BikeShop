require_relative 'Customer'

class Rental

  attr_reader :rental_object

  RENTAL_FEE = 2
  
  def initialize(start_date, end_date, rental_object, customer)
    @start_date = start_date
    @end_date = end_date
    @rental_object = rental_object
    @customer = customer
  end

  def return(time)
    @return_time = time
    puts "returned at #{time}"
  end

  def pay_up
    @totalprice = (@return_time - @start_date) * @rental_object.rate
    latesurcharge
    @customer.charge(@totalprice)
  end

  def latesurcharge
    if @return_time + 1 > @end_date
      @totalprice += RENTAL_FEE
      if @latenotice == true
	@totalprice -= 1
      end
    end
  end

  def latenotification
    @latenotice = 2
  end

end
