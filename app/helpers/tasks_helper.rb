module TasksHelper

    def task_state(boolean)
        boolean ? 'Finished' : 'Not Finished'
    end

end
