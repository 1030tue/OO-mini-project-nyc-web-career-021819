class User

  attr_accessor :name, :allergen

    @@all = []

    def initialize(name, allergen = [])
      @name = name
      @allergen = allergen
      @@all << self
    end


    def self.all
      @@all
    end

    def recipes
      RecipeCards.all.select {|rc|
         rc.user == self}
    end

    def add_recipe_card(recipe, rating, date)
      RecipeCards.new(self, recipe, rating, date)
    end

    def declare_allergen(ingredient)
      new_aller =Allergen.new(self, ingredient)


      # binding.pry
      # if self.allergen != ingredient
      #   self.allergen << ingredient
      # end
    end

    def allergens
      @@all.map do |user|
        user.allergen
      end
    end

    def top_three_recipes
      all_rec = self.recipes.map {|info| info.recipe }
      r_name = all_rec.map { |rc| rc.name }.flatten.uniq
      r_name.max_by(3){|n| n}
    end

    def most_recent_recipe
      arr = self.recipes.sort_by {|rc| rc.date}
      arr.first
    end

end
