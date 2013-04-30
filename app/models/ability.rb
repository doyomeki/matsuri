class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    case user.role
    when "admin"
      can :manage, :all
    when "user" #ここで参加者のユーザ権限設定
      can :read, :all
    end
  end
end
