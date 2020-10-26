class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def dashboard
    @users = User.all
    @users.each do |user|
      @my_lists = List.where(user: user)
      # ? @user = current_user.lists.where(id: params[:id])
    end
  end

end
