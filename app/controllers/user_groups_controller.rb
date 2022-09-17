class UserGroupsController < ApplicationController
  def create
    @group = Group.find(params[:group_id])
    @user_group = UserGroup.create!(group: @group, user: current_user)
    # @user_group.group = @group
    # @user_group.user = current_user
    # @user_group.save! # save permanently
    if @user_group.save
      redirect_to group_path(@group)
    else
      render :new, status: :unprocessable_entity
    end
  end
end
