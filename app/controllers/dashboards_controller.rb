class DashboardsController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
    @users = User.all
    @my_lists = current_user.lists.order(created_at: :desc) #List.where(user: current_user)
    @users.each do |user|
      @my_lists
    end
  end

  def dashboard
  end

end
