class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|


      t.string :color
      t.references :user, index: true

      t.timestamps
    end
  end
end
