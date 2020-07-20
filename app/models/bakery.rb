class Bakery
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def my_desserts
        Dessert.all.select {|dessert| dessert.bakery == self}
    end

    def ingredients
        my_desserts.map {|dessert| dessert.my_ingredients }.flatten
    end

    def average_calories
        (ingredients.map {|ingredient| ingredient.calories}.sum / ingredients.count.to_f).round(2)
    end

    def shopping_list
        ingredients.map {|ingredient| ingredient.name}.join(", ") + "."
    end

end