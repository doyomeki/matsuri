class User < ActiveRecord::Base
  ROLES = %w[admin member]

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :name, :email, :password, :password_confirmation, :remember_me
  attr_accessible :role, :as => :admin

  before_save :default_values
  def default_values
    self.role ||= "member"
  end

  def admin?
    role == "admin"
  end
  def member?
    role == "member"
  end
end
