module AdminHelper
    def can_manage
        if admin_signed_in?
            deny_access("You do not have permission to view this page") unless current_admin.can_manage
        else
            must_sign_in
        end
    end

    def can_update
        if admin_signed_in?
            deny_access("You do not have permission to view this page") unless current_admin.can_update
        else
            must_sign_in
        end
    end

    def can_create
        if admin_signed_in?
            deny_access("You do not have permission to view this page") unless current_admin.can_create
        else
            must_sign_in
        end
    end

    def can_report
        if admin_signed_in?
            deny_access("You do not have permission to view this page") unless current_admin.can_re
        else
            must_sign_in
        end
    end

    def can_sell
    end


    def must_sign_in
        redirect_to new_admin_session_path, :notice => "You must be signed in to view this page"
    end

    def deny_access(notice)
        redirect_to root_path, :notice => notice
    end
end
