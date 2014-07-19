class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags, id: :uuid do |t|
      t.string :name
      t.uuid :item_id, index: true
    end
  end
end
