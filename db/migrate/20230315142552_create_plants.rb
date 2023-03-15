class CreatePlants < ActiveRecord::Migration[6.1]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :image
      t.string :string
      t.string :price
      t.string :decimal

      t.timestamps
    end
  end
end
