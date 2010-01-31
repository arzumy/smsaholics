require File.dirname(__FILE__) + '/../test_helper'

class UserTest < ActiveSupport::TestCase
  should_have_many :messages

  should "be valid with factory" do
    assert_valid Factory.build(:user)
  end

  def test_should_create_user
    assert_difference 'User.count' do
      user = Factory(:user)
      assert !user.new_record?, "#{user.errors.full_messages.to_sentence}"
    end
  end

  def test_should_require_name
    assert_no_difference 'User.count' do
      user = Factory.build(:user, :name => nil)
      user.save! if user.valid?
      assert user.errors.on(:name)
    end
  end

  def test_should_require_password
    assert_no_difference 'User.count' do
      user = Factory.build(:user, :password => nil)
      user.save! if user.valid?
      assert user.errors.on(:password)
    end
  end

  def test_should_require_password_confirmation
    assert_no_difference 'User.count' do
      user = Factory.build(:user, :password_confirmation => "blabla")
      assert user.invalid?
      assert user.errors[:password]
      assert_equal 'doesn\'t match confirmation', user.errors[:password]
    end
  end

  def test_should_require_email
    assert_no_difference 'User.count' do
      user = Factory.build(:user, :email => nil)
      user.save! if user.valid?
      assert user.errors.on(:email)
    end
  end

  def test_should_show_name_when_string
    user = Factory(:user, :name => "String")
    assert_equal "String", "#{user}"
  end
end
