require File.join(File.dirname(__FILE__), '/../test_helper')

class UsersControllerTest < ActionController::TestCase
  context "routing" do
    should_route :post, "messages", :controller => :messages, :action => :create
  end

  fast_context "POST to create" do
    setup do
      attributes = Factory.attributes_for(:user)
      post :create, :user => attributes
    end

    should_set_the_flash_to "Welcome, arzumy"
    should_redirect_to("root") { root_url }
  end
end
