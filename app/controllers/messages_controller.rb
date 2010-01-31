class MessagesController < InheritedResources::Base
  actions :index, :create

  def index
    @message  = Message.new
    @user     = User.new
    index!
  end

  def create
    create! do |success, failure|
      failure.html do
        @user = User.new
        collection
        render :index
      end
      success.html { redirect_to root_url }
    end
  end
end
