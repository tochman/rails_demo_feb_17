class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include Pundit

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  private

  def user_not_authorized(error)
    if error.policy.class.to_s.underscore == 'article_policy'
      message = 'You need to purchase a subscription'
    else
      message = 'You are not authorized to perform this action.'
    end
    redirect_back(fallback_location: root_path, notice: message)
  end
end
