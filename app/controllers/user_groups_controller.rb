class UserGroupsController < ApplicationController
  def create
    @user_group = UserGroup.new
    @group = Group.find(params[:group_id])
    @user_group.group = @group
    @user_group.user = current_user
    if @user_group.save
      redirect_to group_path(@group)
    else
      render :new, status: :unprocessable_entity
    end
  end
end
