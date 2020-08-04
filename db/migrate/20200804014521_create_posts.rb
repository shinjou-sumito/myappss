class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :name
      t.string :product_name
      t.string :work_name
      t.integer :quantity
      t.text :text 
      t.timestamps
    end
  end
end
