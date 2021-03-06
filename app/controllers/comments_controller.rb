class CommentsController < ApplicationController
  skip_before_action :authenticate_user!, only: :new

  def new
    @comment = Comment.new
    @comments = Comment.order('created_at DESC')
  end

  def create
    respond_to do |format|
      if current_user
        @comment = current_user.comments.build(comment_params)
        if @comment.save
          flash[:success] = 'Your comment was successfully posted!'
        else
          flash[:error] = 'Your comment cannot be saved.'
        end
        format.html { redirect_to root_path }
        format.js
      end
      format.html { redirect_to root_path }
      format.js { render nothing: true }
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end