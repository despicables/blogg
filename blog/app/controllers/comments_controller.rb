class CommentsController < ApplicationController
  def index
  end

  def new
  end

  def create
  	@post = Post.find(params[:post_id])
  	@comment = @post.comments.create(params[:comment])
  	redirect_to @post
  end

  def destroy
  	@comment = Comment.find(params[:id])
  	@comment.destroy
  	redirect_to @comment.post
  end
end
