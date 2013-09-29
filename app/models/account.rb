class Account < ActiveRecord::Base
    belongs_to :account_holder
end
