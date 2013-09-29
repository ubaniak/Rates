class CreateDefaultUser < ActiveRecord::Migration
  def change
    create_table :default_users do |t|
        Admin.create(:name => "default user", :email => "admin@admin.com", :password => "asdf1234", :can_create => true, :can_update => true, :can_manage => true, :can_report => true)
    end
  end
end
