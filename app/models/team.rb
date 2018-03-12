class Team < ApplicationRecord

    cattr_accessor :current 

    
    has_many :unities
    has_many :users, through: :unities


end
