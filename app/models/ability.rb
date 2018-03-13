class Ability
  include CanCan::Ability

  def initialize(user)

      user ||= User.new # guest user (not logged in)

      if User.current_role == 'creator'
          can :manage, :all
      elsif User.current_role  == 'user'
          can :manage, Task
          can :read ,Team
      elsif User.current_role  == 'reader'
          can :read, Team
          can :read, Task
      else
          can :read,:all
      end
      
  end
end
