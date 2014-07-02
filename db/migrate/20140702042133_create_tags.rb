class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :color
      t.string :type
      t.string :event
      t.boolean :favorite
      t.string :function
      t.string :weather
      t.integer :rating

      t.timestamps
    end
  end
end
