class CommentsController < ApplicationController
  def create
    #binding.pry
    article = Article.find(params[:article_id])
    Comment.create(email: params[:email],
                   content: params[:comment],
                   article: article)
    flash[:success] = 'Your comment was added successfully'
    redirect_to article_path(article)
  end
end
