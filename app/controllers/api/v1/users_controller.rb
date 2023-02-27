class Api::V1::UsersController < ApplicationController
  def create
    @username = user_params
    @user = User.find_by(user_params)
    if @user.nil?
      @user = User.new(user_params)
      if @user.save
        render json: @user
      else
        render json: @user.errors
      end
    else
      render json: @user
    end
  end

  private

  def user_params
    params.require(:user).permit(:user_name)
  end
end
