class ArticlesController < ApplicationController
  before_action :get_article, except: :index

  def index
    @agency = NewsAgency.first
    @articles = Article.all
  end

  def show
  end


  private

  def get_article
    @article = Article.find(params[:id])
    authorize @article
  end

end
