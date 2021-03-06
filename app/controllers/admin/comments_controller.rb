class Admin::CommentsController < ApplicationController
  before_action :authenticate_admin!
  layout 'admin'
  def index
    @comments = Comment.all
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to admin_comments_path
  end
end
