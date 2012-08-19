class User < ActiveRecord::Base

  validates :login, :presence => true
  validates :email, :email => true

  attr_accessible :login, :email, :first_name, :last_name

end
