class User < ActiveRecord::Base
  ROLES = %w[admin member]

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :name, :email, :password, :password_confirmation, :remember_me, :role

  rolify
  attr_accessible :role_ids, :as => :admin
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me

  def admin?
    role == "admin"
  end
  def member?
    role == "member"
  end
end
