class Rental
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
  end
end
