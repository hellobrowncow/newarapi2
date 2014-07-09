class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users, id: :uuid do |t|
      t.string :name
      t.string :last_name
      t.string :email, index: true
      t.string :salt
      t.string :fish

      t.timestamps
    end
  end
end
