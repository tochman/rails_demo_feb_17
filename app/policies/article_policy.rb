class ArticlePolicy < ApplicationPolicy

  def show?
    user.subscriber? || user.owner?
  end

  def create?
    user.publisher? || user.owner?
  end
end