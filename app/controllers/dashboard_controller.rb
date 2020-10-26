class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def dashboard
    @my_lists = List.where(user: params[:id])
    # ? @user = current_user.lists.where(id: params[:id])
  end

end
