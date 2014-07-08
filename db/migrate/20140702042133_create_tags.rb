class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags, id: :uuid do |t|
      t.boolean :favorite
      t.integer :rating
      t.string :other
      t.timestamps
    end

    create_table :items_tags, id: false do |t|
      t.uuid :item_id, index: true
      t.uuid :tag_id, index: true
    end
  end
end
