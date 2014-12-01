class LikesController < ApplicationController

  def create
     @post = Post.find(params[:post])
     @like = post.likes.build(:user_id => current_user.id)
     if @like.save
      flash[:notice] = "Milestone Liked."
      redirect_to root_url
    else
      flash[:error] = "Unable to Like Milestone."
      redirect_to root_url
  end
end
  
end
