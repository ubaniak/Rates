class CreateCatagories < ActiveRecord::Migration
  def change
    create_table :catagories do |t|
      t.string :name
      t.float :rate

      t.timestamps
    end
  end
end
