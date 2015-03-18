class PostsController < ApplicationController

def index
    @posts = Post.all 
end

def new
    @post = Post.new
   
end

def show
  @post = Post.find(params[:id])
end

def edit
  @post = Post.find(params[:id])
 
end

def create
  post = Post.create(params.require(:post).permit(:avatar, :title, :description, :travel_date))
  redirect_to posts_path
 
end

def update
  @post = Post.find(params[:id])
  @post.update(params.require(:post).permit(:avatar, :title, :description, :travel_date))
  redirect_to posts_path
 
end

def destroy
  @post = Post.find(params[:id])
  @post.destroy
  redirect_to posts_path
end

end