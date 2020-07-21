class ListsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:welcome, :show]
  before_action :set_list, only: [:show, :edit, :update, :destroy]

  # GET /lists
  # GET /lists.json
  def welcome
    @lists = List.all

    @list = policy_scope(List).order(created_at: :desc)
  end

  def index
    @lists = List.all

    @list = policy_scope(List).order(created_at: :desc)
  end

  # GET /lists/1
  # GET /lists/1.json
  def show
    set_list

    authorize @list
  end

  # GET /lists/new
  def new
    @list = List.new

    authorize @list

  end

  # GET /lists/1/edit
  def edit
    authorize @list
  end

  # POST /lists
  # POST /lists.json
  def create
    authorize @list

    @list = List.new(list_params)

    respond_to do |format|
      if @list.save
        format.html { redirect_to @list, notice: 'List was successfully created.' }
        format.json { render :show, status: :created, location: @list }
      else
        format.html { render :new }
        format.json { render json: @list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lists/1
  # PATCH/PUT /lists/1.json
  def update
    authorize @list

    respond_to do |format|
      if @list.update(list_params)
        format.html { redirect_to @list, notice: 'List was successfully updated.' }
        format.json { render :show, status: :ok, location: @list }
      else
        format.html { render :edit }
        format.json { render json: @list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lists/1
  # DELETE /lists/1.json
  def destroy
    authorize @list
    @list.destroy
    respond_to do |format|
      format.html { redirect_to lists_url, notice: 'List was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_list
      @list = List.find(params[:id])

      authorize @list
    end

    # Only allow a list of trusted parameters through.
    def list_params
      params.require(:list).permit(:name, :style, :link, :content)
    end
end
