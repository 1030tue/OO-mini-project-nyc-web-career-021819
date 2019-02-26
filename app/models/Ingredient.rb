
class Ingredient

  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_common_allergen
    total = 0
    user_arr = User.all.map do |user|
      user.allergen
    end.flatten
    user_arr.max_by {|v| v }
  end

end
