class CommentsController < ApplicationController

  def new
     @post = Post.find(params[:post_id])
    @comment = Comment.new
  end


  def create
    @post = Post.find(params[:post_id])

    # AM: Is there a reason you used .merge as opposed to something like @post.comments.create( comment_params )?
    @comment = Comment.create!(comment_params.merge(post: @post))
    redirect_to post_path(@post)
  end


  def edit
  @comment = Comment.find(params[:id])
  end

  # AM: Let me know if you want help implementing the remaining CRUD actions for Comments, although I'm guessing you have it down!

  def  comment_params
  params.require(:comment).permit(:name, :content, :post_id)
  end
end
