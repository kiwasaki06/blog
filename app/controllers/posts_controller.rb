class PostsController < ApplicationController

  def index
    @posts = Post.all.order(created_at: 'desc').page(params[:page]).per(5)
  end

  def show
    @post = Post.find(params[:id])
  end

  def about
  end

  def new
    @post = Post.new
  end

  def create
    # render plain: params[:post].inspect
    # @post = Post.new(params.require(:post).permit(:title,:body))
    @post = Post.new(post_params)
    if @post.save
      # flash[:success] = "POST!"
      redirect_to posts_path, success: ('POST!')
    else
      flash.now[:danger] = "Miss!"
      render 'new'
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      flash[:success] = "UPDATE!"
      redirect_to posts_path
    else
      render 'edit'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end


  private

  def post_params
    params .require(:post).permit(:title, :body, :picture)
  end

end
