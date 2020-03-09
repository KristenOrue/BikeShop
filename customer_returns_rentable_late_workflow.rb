require_relative 'employee'
require_relative 'rental'
class CustomerReturnsRentableLateWorkflow
  
  def initialize(rental, employee, return_time)
    @rental = rental
    @employee = employee
    @return_time = return_time
  end

  def run
    @rental.return(@return_time)
    @rental.pay_up
    @employee.report_issues(@rental.rental_object)
  end

end
