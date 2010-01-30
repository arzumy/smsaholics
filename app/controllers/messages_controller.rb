class MessagesController < InheritedResources::Base
  actions :index, :create

  def index
    @message = Message.new
    index!
  end

  def create
    create! do |success, failure|
      failure.html do
        collection
        render :index
      end
      success.html { redirect_to root_url }
    end
  end
end
