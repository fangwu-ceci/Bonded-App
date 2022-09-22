class PostsController < ApplicationController
  include ActionView::RecordIdentifier
  def create
    @group = Group.find(params[:group_id])
    @post = Post.new(post_params)
    @post.group = @group
    @post.user = current_user
    if @post.save
      dom = dom_id(@post)
      puts dom
      redirect_to group_path(@group, anchor: dom)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def post_params
    params.require(:post).permit(:content, :title)
  end
end
