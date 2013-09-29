module AdminHelper
    def can_manage
        if admin_signed_in?
            deny_access("You do not have permission to view this page") unless current_admin.can_manage
        end
    end

    def can_update
        if admin_signed_in?
            deny_access("You do not have permission to view this page") unless current_admin.can_update
        end
    end

    def can_create
        if admin_signed_in?
            deny_access("You do not have permission to view this page") unless current_admin.can_create
        end
    end

    def can_report
        if admin_signed_in?
            deny_access("You do not have permission to view this page") unless current_admin.can_re
        end
    end

    def can_sell
    end


    def deny_access(notice)
        redirect_to root_path, :notice => notice
    end
end
