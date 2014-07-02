class CreateCollections < ActiveRecord::Migration
  def change
    create_table :collections do |t|
      t.string :location

      t.timestamps
    end
  end
end
