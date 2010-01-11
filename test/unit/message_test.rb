require File.join(File.dirname(__FILE__), '/../test_helper')

class MessageTest < ActiveSupport::TestCase
  should "be valid with factory" do
    assert_valid Factory.build(:message)
  end
end
