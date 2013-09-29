class AddCustomFieldsToAdmin < ActiveRecord::Migration
  def change
    add_column :admins, :name, :string
    add_column :admins, :can_create, :boolean
    add_column :admins, :can_update, :boolean
    add_column :admins, :can_manage, :boolean
    add_column :admins, :can_report, :boolean
  end
end
