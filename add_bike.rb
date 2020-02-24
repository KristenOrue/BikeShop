require_relative 'add_bike_workflow'

class Inventory

    def initialize(bikes)
        bikes = []
    end

    def add(bike)
        bikes << bike
    end

    def remove(bike)
        bikes.pop()
    end 
end
