class Account < ActiveRecord::Base
    belongs_to :account_holder
    belongs_to :area
    belongs_to :catagory
end
