class GroupsController < ApplicationController
  def index
    @groups = Group.all
    category = params[:category]
    location = params[:location]
    @groups = Group.search(category, location)
  end

  def show
    @group = Group.find(params[:id])
    @user_group = UserGroup.new
    @post = Post.new
    @markers = [
      {
        lat: @group.latitude,
        lng: @group.longitude
      }
    ]
  end
end
