class UsersController < ApplicationController
  def new
  end

  def show
  end

  def index
    @users = User.all.order(created_at: :desc)
    @users = User.page(params[:page]).per(10)
  end

end
