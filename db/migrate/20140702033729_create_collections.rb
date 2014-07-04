class CreateCollections < ActiveRecord::Migration
  def change
    create_table :collections, id: :uuid do |t|
      t.string :location

      t.timestamps
    end
  end
end
