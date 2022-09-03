class GroupsController < ApplicationController
  def index
    @groups = Group.all
    category = params[:category]
    location = params[:location]
    @groups = Group.search(category, location)
  end

  def show
    @group = Group.find(params[:id])
    @post = Post.new
  end
end
