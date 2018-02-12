class Admin::UsersController < Admin::BaseController
  def index 
  @users = User.all.order('role,tweets_count desc')
  end
end
