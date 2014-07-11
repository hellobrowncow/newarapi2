class CreateCollections < ActiveRecord::Migration
  def change
    create_table :collections, id: :uuid do |t|
      t.string :location
      t.uuid :user_id, index: true

      t.timestamps
    end
  end
end
