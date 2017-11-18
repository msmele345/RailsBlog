class PostsController < ApplicationController
  def index
    @post = Post.all.order("created_at DESC")
  end

  def new
    @post = Post.new

  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  private
  def post_params
    params.require(:post).permit(:title, :body)
  end
end

##Rails has a security measure called strong params which allows you to explicitly define which params are allowed.