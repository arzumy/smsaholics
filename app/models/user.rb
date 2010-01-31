class User < ActiveRecord::Base
  devise  :all, :except => [ :confirmable ]
  validates_presence_of :name
  has_many :messages
  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :name, :remember_me
end
