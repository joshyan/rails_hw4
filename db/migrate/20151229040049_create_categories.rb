class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name, null: false
      t.integer :posts_count, default: 0

      t.timestamps null: false
    end
  end
end
