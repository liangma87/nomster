class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @user_places = Place.where(user_id: @user.id).paginate(:page => params[:page], :per_page => 1)
  end
end
