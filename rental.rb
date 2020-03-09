class Rental
  RENTAL_FEE = 2
  
  def initialize(start_date, end_date, rental_object, customer)
    @start_date = start_date
    @end_date = end_date
    @rental_object = rental_object
    @customer = customer
  end

  def return(time)
    @return_time = time
  end

  def charge
    @totalprice = (return_time - start_date) * rental_object.rate
    self.latesurcharge
    customer.funds -= @totalprice
  end

  def latesurcharge
    if return_date + 30 > end_date
      @totalprice += RENTAL_FEE
      if @latenotice == true
	@totalprice -= .5 * RENTAL_FEE
      end
    end
  end

  def latenotification
    @latenotice = 2
  end

end
