class Publishing::ArticlesController < Publishing::PublishingController

  def index

  end

  def create
    article = Article.create(article_params.merge!(author: current_user))
    if article.persisted?
      redirect_to publishing_articles_path, notice: 'Your article has been submitted for review.'
    else
      render :new
    end
  end

  private

  def article_params
    params.require(:article).permit!
  end
end
