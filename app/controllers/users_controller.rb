class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "Signed up! Welcome to Artday."
      redirect_to root_path
    else
      render :new
    end
  end

@users = User.all
@hash = Gmaps4rails.build_markers(@users) do |user, marker|
  marker.lat user.latitude
  marker.lng user.longitude
end

private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end
