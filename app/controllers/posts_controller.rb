class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(content_params)
    redirect_to action: :index
  end

  private
    def content_params
      params.require(:post).permit(:title, :content, :name)
    end
end