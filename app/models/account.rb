class Account < ActiveRecord::Base
    belongs_to :account_holder
    belongs_to :area
    belongs_to :catagory
    has_many :change_logs

    def log_changes(params)
        columns = [ :accno,
       :plotno,
       :address,
       :area_id,
       :catagory_id,
       :property_value,
       :hecter,
       :description,
       :land_value,
       :improved,
       :TRV,
       :account_holder_id]
    end
end
