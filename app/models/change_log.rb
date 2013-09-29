class ChangeLog < ActiveRecord::Base
    belongs_to :admin
    belongs_to :account

    after_initialize :set_default

    def set_default
        self.date ||= Date.today
        self.time ||= Time.now
    end

    def self.account_created(account_id, admin_id)
        self.create(:account_id => account_id, :admin_id => admin_id,
                    :comment => "Account created")
    end

    def self.change_account_holder(account, admin, params)
        log = self.new(:account => account, :admin => admin, :column => "account holder id")

        log.from = account.account_holder_id
        log.to = params[:account_holder_id]
        log.supporting_document = params[:supporting_document]
        log.comment = params[:comment]

        if account.update(:account_holder_id => params[:account_holder_id])
            log.save
            return true
        end
        return false
    end
end
