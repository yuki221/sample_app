class PagesController < ApplicationController
  before_action :sign_in_required, only: [:show]
  def index
    @users = User.all.page(params[:page]).per(15).order(created_at: :desc)
  end

  def show

  end

end
