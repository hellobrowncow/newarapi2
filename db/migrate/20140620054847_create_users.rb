class CreateUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|  #users table generated automatically with t.string :name
      
      t.string :email
      t.string :last_name

      #t.timestamps       #auto-generated, redundant
    end
  end
end
