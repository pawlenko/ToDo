module TasksHelper

    def task_state(boolean)
        boolean ? 'Finished' : 'Mark as Finished '
    end

end
