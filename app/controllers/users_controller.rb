class UsersController < ApplicationController
  def index
    @users = User.all
    location = params[:location]
    age = params[:age]
    gender = params[:gender]
    @users = User.search(location, age, gender).order("created_at ASC")
    # @users = User.where(age: params[:start_age]..params[:end_age]) # for age range - need help
  end

  def show
    @user = User.find(params[:id])
  end
end
