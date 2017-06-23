class ProfileController < ApplicationController
  def show
    @user = User.find(params[:id])
    @comment = Comment.where(:user_id => @user )
  end
end