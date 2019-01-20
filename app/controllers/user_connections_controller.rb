class UserConnectionsController < ApplicationController
  before_action :set_user_connection, only: [:show, :update, :destroy]

  # GET /user_connections
  def index
    @user_connections = UserConnection.all

    render json: @user_connections
  end

  # GET /user_connections/1
  def show
    render json: @user_connection
  end

  # POST /user_connections
  def create
    @user_connection = UserConnection.new(user_connection_params)

    if @user_connection.save
      render json: @user_connection, status: :created, location: @user_connection
    else
      render json: @user_connection.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_connections/1
  def update
    if @user_connection.update(user_connection_params)
      render json: @user_connection
    else
      render json: @user_connection.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_connections/1
  def destroy
    @user_connection.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_connection
      @user_connection = UserConnection.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_connection_params
      params.require(:user_connection).permit(:user_id, :connection_id)
    end
end
