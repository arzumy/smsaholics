class UsersController < InheritedResources::Base
  actions :create
  def create
    create! do |success, failure|
      success.html do
        flash[:notice] = "Welcome, #{@user.name}"
        redirect_to root_url
      end
    end
  end
end
