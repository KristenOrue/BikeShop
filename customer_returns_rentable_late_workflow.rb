class CustomerReturnsRentableLateWorkflow
  
  def initialize(rental, emloyee)
    @rental = rental
    @employee = employee
  end

  def run
    @rental.return
    @rental.charge
    @employee.report_issues(@rental)
  end

end
