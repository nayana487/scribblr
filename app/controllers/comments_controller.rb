class CommentsController < ApplicationController

  def new
     @post = Post.find(params[:post_id])
    @comment = Comment.new
  end


  def create
    @post = Post.find(params[:post_id])
    @comment = Comment.create!(comment_params.merge(post: @post))
    redirect_to post_path(@post)
  end


  def edit
  @comment = Comment.find(params[:id])
  end


  def  comment_params
  params.require(:comment).permit(:name, :content, :post_id)
  end
end
