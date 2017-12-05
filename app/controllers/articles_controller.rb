class ArticlesController < ApplicationController
  before_action :user_is_a_subscriber, only: :show

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end


  private
  def user_is_a_subscriber
    unless current_user && current_user.subscriber?
      redirect_to root_path, notice: 'You need to purchase a subscription'
    end
  end

end
