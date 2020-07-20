class Actor
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def number_of_appearances
        Character.all.select {|character| character.actor == self}.count
    end

    def self.most_characters
        most_appearances = 0
        actor_most = nil
        self.all.each do |actor|
            if actor.number_of_appearances >= most_appearances
                most_appearances = actor.number_of_appearances
                actor_most = actor
            end
        end
        actor_most
    end
end