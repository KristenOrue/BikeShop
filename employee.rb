# Use Case: Employee Inspects Bike 

require_relative 'bike'

class Employee

    def initialize(name, id)
        @name = name
        @id = id 
    end

    def rate_the_bike(bike)
        bike.rate
        
    end

end