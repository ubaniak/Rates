class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :accno
      t.string :plotno
      t.string :address
      t.integer :area_id
      t.integer :catagory_id
      t.float :property_value
      t.float :hecter
      t.string :description
      t.float :land_value
      t.float :improved
      t.float :TRV

      t.timestamps
    end
  end
end
