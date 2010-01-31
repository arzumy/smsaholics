class User < ActiveRecord::Base
  devise  :all, :except => [ :confirmable ]
  validates_presence_of :name
  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation
end
