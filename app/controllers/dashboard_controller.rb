class DashboardController < ApplicationController
  before_action :authenticate_user!

  def show
    @users = User.all
    @my_lists = List.where(user: current_user)
    @user = User.find(params[:id])
  end

  def dashboard
  end

end
