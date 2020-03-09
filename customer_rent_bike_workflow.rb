# workflow for customer renting bike
#
require_relative 'Customer'
require_relative 'Bike'

class BikeReservationWorkflow

  def run
    bike = Bike.new('Mountain')
    kayak = Kayak.new('Inflatable')
    cust = Customer.new('Peter', 'Mathew', 333333)
    cust.rent(bike)   
    cust.return(bike)
    cust.rent(kayak)
    cust.return(kayak)
  end
end
