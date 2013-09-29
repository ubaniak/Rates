class CreateDefaultAreas < ActiveRecord::Migration
  def change
    create_table :default_areas do |t|
        Area.create(:name => "Town centre")
        Area.create(:name => "Kanini")
        Area.create(:name => "Mine masala")
    end
  end
end
