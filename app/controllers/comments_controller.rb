class CommentsController < ApplicationController
  def new
    # @article = Article.find(:article_id)
    # @comment = Comment.new(article: @article)
  end

  def create
    article = Article.find(params[:article_id])
    article.comments.create(comment_params)
    flash[:notice] = 'Thank you! You comment has been added.'
    redirect_back fallback_location: root_path
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :email)
  end
end
