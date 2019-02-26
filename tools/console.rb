require_relative '../config/environment.rb'
require 'pry'

#Recipe - name
meatlaof = Recipe.new("Meatlaof")
sandwich = Recipe.new("B.L.T")
fish_taco = Recipe.new("Fish Taco")
udon = Recipe.new("Udon")

# Ingredient -
beef = Ingredient.new('Beef')
milk = Ingredient.new('Milk')
fish = Ingredient.new('fish')
egg = Ingredient.new('Egg')
noodle = Ingredient.new('Noodle')
cheese = Ingredient.new('Cheese')
bread = Ingredient.new('Bread')

#user - name, allergen
ellli = User.new("Eli", milk)
ella = User.new("Ella", egg)
gracy = User.new("Gracy", cheese)
selly = User.new("Selly")

#RecipeCards - user, recipe, rating, date
rc1 = RecipeCards.new(ellli, meatlaof, 4, "01-04-2018")
rc2 = RecipeCards.new(ella, sandwich, 5, "04-24-2018")
rc3 = RecipeCards.new(ellli, meatlaof, 3, "03-09-2019")
rc4 = RecipeCards.new(gracy, udon, 2, "08-16-2019")
rc5 = RecipeCards.new(ella, sandwich, 5, "03-19-2019")
rc6 = RecipeCards.new(ellli, fish_taco, 3, "03-09-2019")
rc7 = RecipeCards.new(gracy, udon, 4, "01-04-2018")
rc7 = RecipeCards.new(gracy, fish_taco, 5, "12-25-2018")



meatlaof_ing = ["Beef", "Egg", "Bread"]
sandwich_ing =["Beef", "Cheese", "Bread"]
fish_taco_ing =["Fish", "Cheese", "Bread", "Mayo"]
udon_ing =["Noodle", "Beef", "Egg", "Soup"]


#RecipeIngredient - ingredient, recipe
ri1 = RecipeIngredient.new("Meatlaof", meatlaof_ing)
ri2 = RecipeIngredient.new("Udon", udon_ing)
ri3 = RecipeIngredient.new("B.L.T", sandwich_ing)
ri4 = RecipeIngredient.new("Fish Taco", fish_taco_ing)
#
# # Allergen - user,ingredient, recipe_ingredient
a1 = Allergen.new(ellli,milk)
a2 = Allergen.new(gracy,cheese)
a3 = Allergen.new(ella,egg)

binding.pry
0
#
