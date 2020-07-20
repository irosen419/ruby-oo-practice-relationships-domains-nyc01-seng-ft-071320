class Ingredient
    attr_accessor :name, :calories, :dessert

    @@all = []

    def initialize(name, calories, dessert)
        @name = name
        @calories = calories
        @dessert = dessert
        @@all << self
    end

    def self.all
        @@all
    end

    def bakery
        # Bakery.all.find {|bakery| bakery.my_desserts.include?(self.dessert)}
        self.dessert.bakery
    end

    def self.find_all_by_name(ingredient_string)
        self.all.map {|ingredient| ingredient.name.include?(ingredient_string)}
    end

end