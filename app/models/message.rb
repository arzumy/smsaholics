class Message < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :body
  named_scope :recent, :order => "created_at DESC"
end
