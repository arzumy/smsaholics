require File.join(File.dirname(__FILE__), '/../test_helper')

class MessagesControllerTest < ActionController::TestCase
  context "routing" do
    should_route :get,  "messages", :controller => :messages, :action => :index
    should_route :post, "messages", :controller => :messages, :action => :create
  end

  fast_context "GET to index" do
    setup do
      get :index
    end

    should_assign_to(:message)
    should_assign_to(:messages)
    should_assign_to(:user)
    should_respond_with :success
    should_render_template :index
    should_not_set_the_flash
  end

  fast_context "POST to create" do
    setup do
      @user = Factory(:user)
      sign_in @user
      attributes = Factory.attributes_for(:message)
      post :create, :message => attributes
    end

    should_assign_to(:message)
    should_set_the_flash_to /created/i
    should_redirect_to("root") { root_url }
  end

  fast_context "POST to create without login" do
    setup do
      attributes = Factory.attributes_for(:message)
      post :create, :message => attributes
    end

    should_redirect_to("user sign_in") { new_user_session_path(:unauthenticated => true) }
  end

  fast_context "POST to create without body" do
    setup do
      @user = Factory(:user)
      sign_in @user
      attributes = Factory.attributes_for(:message)
      attributes.delete(:body)
      post :create, :message => attributes
    end

    should_assign_to(:message)
    should_assign_to(:messages)
    should_assign_to(:user)
    should_render_template :index
    should_not_set_the_flash
  end

end