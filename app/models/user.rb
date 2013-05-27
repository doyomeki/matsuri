class User < ActiveRecord::Base
  ROLES = %w[admin member]
  validates_uniqueness_of :name
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :authentication_keys => [:name]

  attr_accessible :name, :email, :password, :password_confirmation, :remember_me, :role
  attr_accessible :role, :as => :admin

  before_save :default_values
  def default_values
    self.role ||= "member"
  end
  def email_required?
    false
  end

  def admin?
    role == "admin"
  end
  def member?
    role == "member"
  end
end
