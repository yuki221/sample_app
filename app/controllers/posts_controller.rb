class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def index
    @post = Post.all
  end

  def create
    @post = Post.new(
      post_params,
      user_id: current_user.id)
    if @post.save
      redirect_to root_path, notice: '投稿しました'
    else
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :body, :photo_id)
  end
end
