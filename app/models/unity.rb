class Unity < ApplicationRecord

    attr_accessor :role_id,:user_id, :team_id;

    belongs_to :role
    belongs_to :team
    belongs_to :user

end
