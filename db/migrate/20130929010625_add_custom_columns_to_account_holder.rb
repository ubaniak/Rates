class AddCustomColumnsToAccountHolder < ActiveRecord::Migration
  def change
    add_column :account_holders, :name, :string
  end
end
