class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings, id: :uuid do |t|
      t.integer :rank
      t.uuid :item_id, index: true
      t.uuid :user_id, index: true
    end
  end
end
