class CommentsController < ApplicationController
  def create
    article = Article.find(params[:article_id])
    comment = Comment.new(email: params[:email],
                   content: params[:comment],
                   article: article)
    if comment.save
      flash[:success] = 'Your comment was added successfully'
    else
      message = ''
      comment.errors.full_messages.each do |error_message|
        message += error_message
      end
      flash[:success] = message + '\n'
    end
    redirect_to article_path(article)
  end
end
