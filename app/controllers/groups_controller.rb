class GroupsController < ApplicationController
  def index
    if params[:query].present?
      @groups = Group.where("category ILIKE ?", "%#{params[:query]}%")
    else
      @groups = Group.all
    end
  end

  def show
    @group = Group.find(params[:id])
  end
end
