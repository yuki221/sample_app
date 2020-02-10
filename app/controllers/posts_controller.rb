class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def show
    @post = Post.find_by(id: params[:id])
    @posts = Post.find_by(params[:id])
    @user = User.find_by(id: @posts.user_id)
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    redirect_to root_path
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

  private

  def post_params
    params.require(:post).permit(:title, :body, :image, :tag_list)
  end

  def task_params
    params.require(:user).permit(:name, :description, :tag_list)
    #tag_list を追加
  end
end
