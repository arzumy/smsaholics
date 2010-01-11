require File.join(File.dirname(__FILE__), '/../test_helper')

class MessagesControllerTest < ActionController::TestCase
  context "routing" do
    should_route :get,  "messages", :controller => :messages, :action => :index
  end

  fast_context "GET to index" do
    setup do
      get :index
    end

    should_assign_to(:messages)
    should_respond_with :success
    should_render_template :index
    should_not_set_the_flash
  end
end
