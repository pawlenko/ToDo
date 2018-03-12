class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :unities
  has_many :teams, through: :unities    

  has_many :created_tasks, :class_name => "Task", :foreign_key => "user_created_id"
  has_many :finished_tasks, :class_name => "Task", :foreign_key => "user_finish_id"
     
end
