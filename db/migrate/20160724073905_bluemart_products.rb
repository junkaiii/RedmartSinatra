class BluemartProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|

      t.string :name, null:false
      t.string :price, null:false
      t.string :photo
      t.string :brand
      t.string :category
      t.string :quantity

      t.timestamps
    end
  end
end
