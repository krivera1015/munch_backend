class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.integer :rating
      t.string :category
      t.string :img_url
      t.string :distance

      t.timestamps
    end
  end
end
