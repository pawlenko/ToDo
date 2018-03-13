class TeamController < ApplicationController

def new
    @team = Team.new
    respond_to do |format|
        format.js {render action: "new" }
    end
end

def create
    @team = Team.new(team_params)
    @unit = Unity.new
    @unit.role = Role.where(name: 'creator').first()
    respond_to do |format|
    if @team.save
        @unit.user = current_user
        @unit.team = @team
        @unit.save
        format.js {render action: "create" }
        format.html {redirect_to root_path,  notice:"New team added"}
        format.json { render json: @team.to_json }
        else
        format.js   {  render  "shared/alert", :locals=>{:alert=>"Something went wrong"} }
        format.html {redirect_to root_path,  notice:"Error"}
        format.json { render json: @team.to_json }
      end
    end
end

def destroy
    @team = Team.find(params[:id])
    @team.destroy
    respond_to do |format|
        format.html { redirect_to  root_path, notice: 'Team was successfully destroyed.' }
        format.js { render action: "destroy" }
    
     end 
end

private


def team_params
   params.require(:team).permit(:name,:description)
end


end
