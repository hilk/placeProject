class AddCategoryIdToPlaces < ActiveRecord::Migration[5.0]
  def change
  	add_foreign_key :categories,:places
  end
end
