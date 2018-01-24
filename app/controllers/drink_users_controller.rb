class DrinkUsersController < ApplicationController
  before_action :set_drink_user, only: [:show, :edit, :update, :destroy]

  # GET /drink_users
  # GET /drink_users.json
  def index
    @drink_users = DrinkUser.all
  end

  # GET /drink_users/1
  # GET /drink_users/1.json
  def show
  end

  # GET /drink_users/new
  def new
    @drink_user = DrinkUser.new
  end

  # GET /drink_users/1/edit
  def edit
  end

  # POST /drink_users
  # POST /drink_users.json
  def create
    @drink_user = DrinkUser.new(drink_user_params)

    respond_to do |format|
      if @drink_user.save
        format.html { redirect_to @drink_user, notice: 'Drink user was successfully created.' }
        format.json { render :show, status: :created, location: @drink_user }
      else
        format.html { render :new }
        format.json { render json: @drink_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /drink_users/1
  # PATCH/PUT /drink_users/1.json
  def update
    respond_to do |format|
      if @drink_user.update(drink_user_params)
        format.html { redirect_to @drink_user, notice: 'Drink user was successfully updated.' }
        format.json { render :show, status: :ok, location: @drink_user }
      else
        format.html { render :edit }
        format.json { render json: @drink_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /drink_users/1
  # DELETE /drink_users/1.json
  def destroy
    @drink_user.destroy
    respond_to do |format|
      format.html { redirect_to drink_users_url, notice: 'Drink user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_drink_user
      @drink_user = DrinkUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def drink_user_params
      params.fetch(:drink_user, {})
    end
end
