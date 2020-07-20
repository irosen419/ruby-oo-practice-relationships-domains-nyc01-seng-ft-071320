class Passenger
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
        Ride.all.select {|ride| ride.passenger == self}
    end

    def drivers
        rides.map {|ride| ride.driver}
    end

    def total_distance
        rides.map {|ride| ride.distance}.sum
    end

    def self.premium_members
        Ride.all.map {|ride| ride.passenger if ride.passenger.total_distance > 100.0}.compact.uniq
    end

end