class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :color
      t.string :clothing_type
      t.string :event
      t.boolean :favorite
      t.string :function
      t.string :weather
      t.integer :rating
      t.string :brand
      t.string :other

      t.timestamps
    end
  end
end
