class AddPlaceIdToComments < ActiveRecord::Migration[5.0]
  def change
  	add_foreign_key :comments, :places
  end
end
