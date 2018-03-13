class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :initialize_team, :initialize_user_role


  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end



  protected
 
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :email, :password])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :email, :password, :current_password])
  end 


  def after_sign_in_path_for(resource)
    board_index_url
  end


  def initialize_team
		Team.current = Team.find(params[:team_id]) if params.has_key?(:team_id)     
	end
 

 
  def initialize_user_role
		User.current_role = Unity.where(team_id: Team.current.id, user_id: current_user.id).first.role.name unless Team.current.nil? || current_user.nil?
  end

  
end
