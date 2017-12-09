module ApplicationHelper



  def get_comments(article)
    if current_user.owner?
      article.comments.not_rejected
    else
      article.comments
    end
  end
end
