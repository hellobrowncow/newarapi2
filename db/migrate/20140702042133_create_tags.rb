class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags, id: :uuid do |t|
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

    create_table :items_tags, id: false do |t|
      t.uuid :item_id, index: true
      t.uuid :tag_id, index: true
    end
  end
end
