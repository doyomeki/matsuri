class User < ActiveRecord::Base
  ROLES = %w[admin member]

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :name, :email, :password, :password_confirmation, :remember_me
  attr_accessible :role, :as => :admin

  def admin?
    role == "admin"
  end
  def member?
    role == "member"
  end
end
