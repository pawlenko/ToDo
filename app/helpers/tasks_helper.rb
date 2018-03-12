module TasksHelper

    def task_state(boolean)
        boolean ? '<%= fa_icon "check-square" %>' : '<%= fa_icon "square" %>'
    end

end
