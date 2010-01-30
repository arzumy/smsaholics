class MessagesController < InheritedResources::Base
  actions :index, :create

  def index
    @message = Message.new
    index!
  end

  def create
    create! {root_url}
  end
end
