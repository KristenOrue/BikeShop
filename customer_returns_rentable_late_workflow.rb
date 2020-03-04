class CustomerReturnsRentableLateWorkflow
  
  def initialize(rental, emloyee, return_time)
    @rental = rental
    @employee = employee
  end

  def run
    @rental.return(return_time)
    @rental.charge
    @employee.report_issues(@rental)
  end

end
