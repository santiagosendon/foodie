class CreateMenuItems < ActiveRecord::Migration[5.2]
  def change
    create_table :menu_items do |t|
      t.integer :restaurant_id
      t.string :name
      t.decimal :price

      t.timestamps
    end
  end
end
