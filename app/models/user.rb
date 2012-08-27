class User < ActiveRecord::Base

  has_many :events
  belongs_to :role

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :login, :first_name, :last_name, :email, :password, :password_confirmation, :remember_me

  validates :login, :presence => true

  def role?(role)
    return self.role == Role.find_by_name(role.to_s)
  end

end
