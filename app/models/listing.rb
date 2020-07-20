class Listing
    attr_accessor :city

    @@all = []

    def initialize(city)
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end

    def trips
        Trip.all.select {|trip| trip.listing == self}
    end

    def guests
        trips.map {|trip| trip.guest}
    end

    def trip_count
        trips.count
    end

    def self.find_all_by_city(city)
        self.all.select {|listing| listing.city == city}
    end

    def self.most_popular
        most_trips = 0
        most_trips_listing = nil
        self.all.select do |listing|
            if listing.trip_count > most_trips
                most_trips = listing.trip_count
                most_trips_listing = listing
            end
        end
        most_trips_listing
    end
end