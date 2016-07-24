class Bluemart < ActiveRecord::Migration
  def change
    create_table :users do |t|

      t.string :name, null:false
      t.string :email
      t.string :address
      t.string :password
      t.string :cc_number

      t.timestamps
    end
  end
end
