class Recipe < ActiveRecord::Base
  has_many :ingredients 

  accepts_nested_attributes_for :ingredients

  def ingredients=(ingredients)
    ingredients.each do |ingredient|
      self << ingredient
    end
  end

end
