class UsersController < ApplicationController
  before_action :set_user, only: %i[ show edit update destroy ]
  def index
    location = params[:location]
    min_age = params[:min_age]
    max_age = params[:max_age]
    gender = params[:gender]
    if params[:commit] && (!params[:min_age].present? || !params[:max_age].present? || !params[:location].present? || !params[:gender].present?)
      flash[:alert] = "Fill out all the info"
      @users = User.all
    elsif params[:min_age].present?
      sql_query = "location ILIKE ? AND gender = ? AND age BETWEEN ? AND ?", "%#{location}%", "#{gender}", min_age, max_age
      @users = User.where(sql_query)
    else
      @users = User.all
    end
    # @users = User.search(location, min_age, max_age, gender).order("created_at ASC")
  end

  def show
    @user = User.find(params[:id])
    @markers = [
      {
        lat: @user.latitude,
        lng: @user.longitude
      }
    ]
  end
end

private

    def set_user
      @user = User.find(params[:id])
    end

# Solution 1:
# if params[:min_age].present?
#   sql_query = "location ILIKE ? AND gender = ? AND age BETWEEN ? AND ?", "%#{location}%", "#{gender}", min_age, max_age
#   @users = User.where(sql_query)
# else
#   @users = User.all
# end

# Solution 2:
# if params[:commit] && (!params[:min_age].present? || !params[:max_age].present? || !params[:location].present? || !params[:gender].present?)
#   flash[:alert] = "Fill out all the info"
#   @users = User.all
# elsif params[:min_age].present?
#   sql_query = "location ILIKE ? AND gender = ? AND age BETWEEN ? AND ?", "%#{location}%", "#{gender}", min_age, max_age
#   @users = User.where(sql_query)
# else
#   @users = User.all
# end
# end
