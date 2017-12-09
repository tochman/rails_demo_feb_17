class ArticlePolicy < ApplicationPolicy

  def show?
    user.subscriber? || user.owner?
  end
end