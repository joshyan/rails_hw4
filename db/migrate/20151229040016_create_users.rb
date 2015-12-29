class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.string :password, null: false
      t.belongs_to :user_role
      
      t.timestamps null: false
    end
  end
end
