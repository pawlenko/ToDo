class TaskController < ApplicationController
    before_action :set_team

    def index
    @tasks =  @current_team.tasks.all()
    respond_to do |format|
        format.js { render action: "index" }
    end
    end

    def create
        @task = Task.new(task_params)
        @task.user_created = current_user
        @task.team = @current_team
        @tasks =  @current_team.tasks.all()
        respond_to do |format|
        if @task.save
            format.js {render action: "index" }
            format.html {redirect_to root_path,  notice:"New task added"}
            format.json { render json: @task.to_json }
            else
            format.js {render action: "index" }
            format.html {redirect_to root_path,  notice:"Error"}
            format.json { render json: @task.to_json }
          end
        end

    end


    def new
        @task = Task.new
        respond_to do |format|
            format.js {render action: "new" }
        end
    end
    
    private

    def set_team
       @current_team = Team.find(params[:team_id])
    end

    def task_params
        params.require(:task).permit(:name)
    end


end
