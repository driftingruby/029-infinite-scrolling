class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :slug
      t.float :price
      t.string :department
      t.text :description
      t.timestamps null: false
    end
    add_index :products, :slug, unique: true
  end
end
