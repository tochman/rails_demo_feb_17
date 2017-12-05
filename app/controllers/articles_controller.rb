class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    if current_user && current_user.subscriber?
      @article = Article.find(params[:id])
    else
      redirect_to root_path, notice: 'You need to purchase a subscription'
    end
  end

end
