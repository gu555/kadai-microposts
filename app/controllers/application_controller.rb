class ApplicationController < ActionController::Base
    
  include SessionsHelper

  private

  def require_user_logged_in
    unless logged_in?
      redirect_to login_url
    end
  end
  
  def counts(user)
    @count_microposts = user.microposts.count
    @count_followings = user.followings.count
    @count_followers = user.followers.count
    # お気に入り追加
    @count_likes = user.likes.count
    # ここまでお気に入り追加
  end
  
end