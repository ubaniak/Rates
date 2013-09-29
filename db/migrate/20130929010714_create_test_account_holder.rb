class CreateTestAccountHolder < ActiveRecord::Migration
  def change
    create_table :test_account_holders do |t|
        AccountHolder.create(:name => "test", :email => "test@test.com", :password => "asdf1234")
    end
  end
end
