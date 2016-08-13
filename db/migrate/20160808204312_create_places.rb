class CreatePlaces < ActiveRecord::Migration[5.0]
  def change
    create_table :places do |t|
      t.string :name
      t.string :addres
      t.datetime :estabished_at
      t.integer :number
      t.string :mail
      t.string :description
      t.integer :category_id

      t.timestamps
    end
  end
end
