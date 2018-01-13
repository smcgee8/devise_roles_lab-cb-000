class UsersController < ApplicationController

  def edit
  end

  def update
  end

  def index
  end

  def show
    @user = User.find(params[:id])
    redirect_to :back, :alert => "Access denied." unless current_user.admin? || current_user.try(:id) == @user.id
  end

end
