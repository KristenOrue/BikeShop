require_relative 'employee'
class CustomerReturnsRentableLateWorkflow
  
  def initialize(rental, employee, return_time)
    @rental = rental
    @employee = employee
    @return_time = return_time
  end

  def run
    @rental.return(@return_time)
    @rental.charge
    @employee.report_issues(@rental.object)
  end

end
