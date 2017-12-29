class CommentsController < ApplicationController
  before_action :get_article, only: [:create]

  def create
    comment = Comment.create(comment_params.merge!(article: @article))
    if comment.persisted?
      flash[:success] = 'Your comment was added successfully and will be reviews before publication'
    else
      message = ''
      comment.errors.full_messages.each do |error_message|
        message += error_message
      end
      flash[:success] = message + '<br>'
    end
    redirect_to article_path(@article)
  end

  def update
    comment = Comment.not_rejected.find params[:id]
    if params[:transition]
      comment.send(params[:transition].to_sym)
    end
    redirect_to article_path(comment.article), notice: "Comment was #{comment.state}!"
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :email)
  end

  def get_article
    @article = Article.friendly.find(params[:article_id])
  end
end
