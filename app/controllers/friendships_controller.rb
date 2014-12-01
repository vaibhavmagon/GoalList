class FriendshipsController < ApplicationController
 
def create
  @friendship = current_user.friendships.build(:friend_id => params[:friend_id])
  if @friendship.save
    flash[:notice] = "Follow User."
    redirect_to root_url
  else
    flash[:error] = "Unable to Follow."
    redirect_to root_url
  end
end

def destory
end

end
