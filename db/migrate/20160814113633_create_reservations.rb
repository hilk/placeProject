class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.datetime :date
      t.string :number_of_people
      t.integer :place_id
      t.integer :customer_id

      t.timestamps
    end
  end
end
