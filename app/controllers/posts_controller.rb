class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def index
    @post = Post.all
    @posts = Post.find_by(params[:id])
    @user = User.find_by(id: @posts.user_id)
  end

  def create
    @post = current_user.posts.build(
      post_params)
    if @post.save
      redirect_to root_path, notice: '投稿しました'
    else
      render 'pages/about'
    end
  end

  def destroy
  end

  private

  def post_params
    params.require(:post).permit(:title, :body, :photo)
  end
end
