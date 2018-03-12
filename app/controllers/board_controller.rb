class BoardController < ApplicationController
    before_action :authenticate_user!

    def index
        @teams  = current_user.teams.all()
    end

end
