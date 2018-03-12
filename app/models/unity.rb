class Unity < ApplicationRecord

    attr_accessor :user_id, :team_id;

    belongs_to :team
    belongs_to :user

end
