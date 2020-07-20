class Movie
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def char_movies
        Char_Movie.all.select {|char_movie| char_movie.movie == self}
    end

    def characters
        char_movies.map {|char_movie| char_movie.character}
    end

    def actors
        characters.map {|character| character.actor}.uniq
    end

    def num_actors_in_movie
        actors.count
    end

    def self.most_actors
        self.all.max {|a, b| a.num_actors_in_movie <=> b.num_actors_in_movie}
    end

end