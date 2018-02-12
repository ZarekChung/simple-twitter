class Admin::TweetsController < Admin::BaseController
  def index
    @tweets = Tweet.all.order('tweets.created_at desc')
  end

  def destroy
    @tweet = Tweet.find(params[:id])
    @tweet.destroy
    flash[:notice] = "tweet was deleted!"
    redirect_to admin_root_path  
  end
end
