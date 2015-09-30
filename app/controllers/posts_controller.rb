class PostsController < ApplicationController
  def index
    @post = Post.new
    @posts = Post.all
  end

  def create
    puts params
    @post = Post.new post_params
    @post.save
    redirect_to root_path
  end

  def like
  end

  private

  def post_params
    params.require(:post).permit(:text)
  end
end
