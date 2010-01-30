class MessagesController < InheritedResources::Base
  actions :index, :create

  def create
    create! {root_url}
  end
end
