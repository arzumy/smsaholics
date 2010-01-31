class MessagesController < InheritedResources::Base
  before_filter :authenticate_user!, :only => [:create]
  actions :index, :create

  def index
    @message  = Message.new
    @user     = User.new
    index!
  end

  def create
    @message = current_user.messages.new(params[:message])
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
