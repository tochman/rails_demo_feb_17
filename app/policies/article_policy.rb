class ArticlePolicy < ApplicationPolicy

  def show?
    user.subscriber?
  end
end