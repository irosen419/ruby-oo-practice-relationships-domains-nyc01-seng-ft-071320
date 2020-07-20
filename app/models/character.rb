class Character
    attr_accessor :name, :actor, :movie, :show

    @@all = []

    def initialize(name, actor)
        @name = name
        @actor = actor
        @@all << self
    end

    def self.all
        @@all
    end

    def num_appearances
        movies = Char_Movie.all.select {|char_movie| char_movie.character == self}.count
        shows = Char_Show.all.select {|char_show| char_show.character == self}.count
        movies + shows
    end

    def self.most_appearances
        num = 0
        most_appeared = nil
        self.all.each do |character|
            if character.num_appearances >= num
                num = character.num_appearances
                most_appeared = character
            end
        end
        most_appeared
    end

end