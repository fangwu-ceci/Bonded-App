class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @groups_all = Group.all
    @groups = @groups_all.sample(3)
    @user = User.find(params[:id])
  end
end
