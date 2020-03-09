require_relative 'customer_returns_rentable_late_workflow'
require_relative 'employee'
require_relative 'rental'
require_relative 'Customer'
#need a rental class, eployee, and return date
employee = Employee.new("Bob Dole", 2)
customer = Customer.new("username", "password", 50)
bike = Bike.new("mountain", 4)
rental = Rental.new(4, 8, bike, customer)
workflow = CustomerReturnsRentableLateWorkflow.new(rental, employee, 10)

workflow.run
