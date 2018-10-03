class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name
     t.integer :phone_number
      t.string :address
      t.string :review
      t.string :description
      t.timestamps
    end
  end
end
