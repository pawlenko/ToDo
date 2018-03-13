class UnitController < ApplicationController
    before_action :set_team

    def index
        @units = @current_team.unities.all()
        respond_to do |format|
            format.js { render action: "index" }
        end
    end


    def new
        @unit = Unity.new
        respond_to do |format|
            format.js {render action: "new" }
        end
    end


   


    def create
        @user =  nil;
        if(params.has_key?(:email))
            @user = User.where(email: params[:email]).first()
        end

        @unit = Unity.new()
        @unit.team = @current_team
        @unit.user = @user
        @units =   @current_team.unities.all()
        respond_to do |format|
        if @unit.save
            format.js {render action: "index" }
            format.html {redirect_to root_path,  notice:"New task added"}
            format.json { render json: @unit.to_json }
            else
            format.js {render action: "index" }
            format.html {redirect_to root_path,  notice:"Error"}
            format.json { render json: @unit.to_json }
          end
        end
    end


    def destroy
        @unit = Unity.find(params[:id])
        @units =   @current_team.unities.all()
        @unit.destroy();
        respond_to do |format|
                format.js {render action: "index" }
                format.html {redirect_to root_path,  notice:"User removed"}
         end
    end


    private

    def set_team
        @current_team = Team.find(params[:team_id])
    end

end
