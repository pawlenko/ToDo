class Task < ApplicationRecord
    belongs_to :team
    belongs_to :user_created, :class_name => "User"
    belongs_to :user_finish, :class_name => "User", required: false
end
