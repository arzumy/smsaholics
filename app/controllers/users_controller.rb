class UsersController < InheritedResources::Base
  actions :create
  def create
    create! do
      flash[:notice] = "Welcome, #{@user.name}"
      root_url
    end
  end
end
