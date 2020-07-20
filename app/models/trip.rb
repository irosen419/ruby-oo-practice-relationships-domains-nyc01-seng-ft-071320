class Trip
    attr_accessor :guest, :listing

    @@all = []

    def initialize(guest, listing)
        @guest = guest
        @listing = listing
        @@all << self
    end

    def self.all
        @@all
    end

    def find_this_trip
        Trip.all.find {|trip| trip == self}
    end

    
end