class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.text :content
      t.belongs_to :category
      t.belongs_to :user

      t.timestamps null: false
    end
  end
end
