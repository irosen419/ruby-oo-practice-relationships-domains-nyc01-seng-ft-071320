class Show
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def char_shows
        Char_Show.all.select {|char_show| char_show.show == self}
    end

    def characters
        char_shows.map {|char_show| char_show.character}
    end

    def on_the_big_screen
        Movie.all.select {|movie| movie.name == self.name}
    end
end