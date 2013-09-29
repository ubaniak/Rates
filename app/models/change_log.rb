class ChangeLog < ActiveRecord::Base
    belongs_to :admin
    belongs_to :account
end
