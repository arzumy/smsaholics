require File.join(File.dirname(__FILE__), '/../test_helper')

class MessageTest < ActiveSupport::TestCase
  should_validate_presence_of :body
  should_belong_to :user
  should_have_named_scope :recent, :order => "created_at DESC"

  should "be valid with factory" do
    assert_valid Factory.build(:message)
  end
end
