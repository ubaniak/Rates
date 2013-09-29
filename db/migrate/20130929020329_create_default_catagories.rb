class CreateDefaultCatagories < ActiveRecord::Migration
  def change
    create_table :default_catagories do |t|
        Catagory.create(:name => "Comercial", :rate => 0.003)
        Catagory.create(:name => "Industrial", :rate => 0.0102)
    end
  end
end
