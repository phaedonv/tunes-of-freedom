class DashboardsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_dashboard, only:[:show, :edit, :destroy, :update]

  def show

    @user = User.find(params[:id])
    @users = User.all
    @my_lists = current_user.lists.order(created_at: :desc) #List.where(user: current_user)


    @their_lists = @user.lists


    authorize @dashboard
  end

  def new
    @dashboard = Dashboard.new
    authorize @dashboard
  end

  def create
    @dashboard = Dashboard.new(dashboard_params)
    @dashboard.user_id = current_user.id
    authorize @dashboard
    if @dashboard.save
      redirect_to dashboard_path(@dashboard)
    else
      render :new
    end

  end

  def edit
    authorize @dashboard
  end

  def update
    @dashboard.update(dashboard_params)
    authorize @dashboard
    if @dashboard.save!
      redirect_to dashboard_path(@dashboard)
    else
      render :edit
    end
  end

  def destroy
    @dashboard.destroy
    redirect_to root_path
  end

  private

  def set_dashboard
    @dashboard = Dashboard.find(params[:id])
  end

  def dashboard_params
    params.require(:dashboard).permit(:first_name, :last_name, :age, :location, :status)
  end
end
