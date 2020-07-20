class Driver
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def rides
        Ride.all.select {|ride| ride.driver == self}
    end

    def passengers
        rides.map {|ride| ride.passenger}
    end

    def my_total_miles
        rides.map {|ride| ride.distance}.sum
    end

    def self.mileage_cap(distance_cap)
        Ride.all.map {|ride| ride.driver if ride.driver.my_total_miles > distance_cap}.compact.uniq
    end

end