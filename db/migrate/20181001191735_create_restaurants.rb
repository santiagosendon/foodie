class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.integer :phone_number
      t.string :address
      t.integer :review_id
      t.string :description
      t.timestamps
    end
  end
end
