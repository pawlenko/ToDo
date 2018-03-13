class User < ApplicationRecord
  rolify

  cattr_accessor :current_role 
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :unities
  has_many :teams, through: :unities    
  has_many :roles, through: :unities
  has_many :created_tasks, :class_name => "Task", :foreign_key => "user_created_id"
  has_many :finished_tasks, :class_name => "Task", :foreign_key => "user_finish_id"
     

  def isCreator?(team)
    temp = team.unities.where(user_id:  self.id).first()
    if(temp.role.name == 'creator')
      true
    else
      false
    end
  end

  def isReader?(team)
    temp = team.unities.where(user_id:  self.id).first()
    if(temp.role.name == 'reader')
      true
    else
      false
    end
  end


  def isUser?(team)
    temp = team.unities.where(user_id:  self.id).first()
    if(temp.role.name == 'user')
      true
    else
      false
    end
  end


end
