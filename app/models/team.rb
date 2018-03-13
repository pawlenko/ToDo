class Team < ApplicationRecord

    cattr_accessor :current 

    
    has_many :unities
    has_many :users, through: :unities
    has_many :tasks
    has_many :roles, through: :unities

end
