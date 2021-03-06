class PostsController < ApplicationController
  def index
    @post = Post.all.order("created_at DESC")
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id

    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post =Post.find(params[:id])
  end

  def update
    authorize
    @post =Post.find(params[:id])
    if @post.update(params[:post].permit(:title, :body))
      redirect_to @post
    else
      render 'edit'
    end
  end

  def destroy
    authorize
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to root_path
  end

  private
  def post_params
    params.require(:post).permit(:title, :body)
  end
end

##Rails has a security measure called strong params which allows you to explicitly define which params are allowed.