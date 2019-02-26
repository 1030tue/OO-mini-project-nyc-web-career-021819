class Recipe

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end


  def self.all
    @@all
  end

  def self.most_popular
    all_rc = RecipeCards.all.map do |rc|
      rc.recipe.name
    end
    max = all_rc.max_by {|n| n}
    self.all.select do |recipe|
      if recipe.name == max
         recipe
       end
    end
  end

# binding.pry

  def users
    RecipeCards.all.find {|rc| rc.recipe == self}.user
  end

  def ingredients
      RecipeIngredient.all.select {|r| r.recipe == self.name}
  end

  def allergens
    user_all = User.all.map {|u| u.allergen}
    rec_all = self.ingredients.map {|n| n.ingredient}.flatten
      user_all & rec_all
  end

  def add_ingredients(ingredient)
    ingr = self.ingredients.map {|ingr| ingr.ingredient}
     added = ingr.flatten |ingredient
     added.uniq
    #  Ingredient.all << added this will add all the new ingredients to the Ingredient class @@all

  end
end
