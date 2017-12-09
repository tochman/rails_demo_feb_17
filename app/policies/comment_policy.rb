class CommentPolicy < ApplicationPolicy

  def moderate?
    user.owner?
  end
end