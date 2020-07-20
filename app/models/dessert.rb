class Dessert
    attr_accessor :name, :bakery

    @@all = []

    def initialize(name, bakery)
        @name = name
        @bakery = bakery
        @@all << self
    end

    def self.all
        @@all
    end

    def my_ingredients
        Ingredient.all.select {|ingredient| ingredient.dessert == self}
    end

    def calories
        my_ingredients.map {|ingredient| ingredient.calories}.sum
    end

end