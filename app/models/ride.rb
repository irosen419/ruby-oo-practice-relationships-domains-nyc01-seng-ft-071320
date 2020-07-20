class Ride
    attr_reader :distance
    attr_accessor :driver, :passenger

    @@all = []

    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance
        @@all << self
    end

    def self.all
        @@all
    end

    def self.average_distance
        self.all.collect {|ride| ride.distance}.sum / self.all.count
    end
end