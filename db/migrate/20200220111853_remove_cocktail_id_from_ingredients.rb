class RemoveCocktailIdFromIngredients < ActiveRecord::Migration[6.0]
  def change
    remove_reference :ingredients, :cocktail, index: true, foreign_key: true
  end
end
