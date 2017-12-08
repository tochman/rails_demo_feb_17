class ApplicationController < ActionController::Base
  before_action :get_agency
  before_action :configure_permitted_parameters, if: :devise_controller?


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
    redirect_to root_path, notice: message
    #redirect_back(fallback_location: root_path, notice: message)
  end

  def get_agency
    @agency = NewsAgency.first
  end


  def configure_permitted_parameters
    permitted_parameters = devise_parameter_sanitizer.instance_values['permitted']
    attributes = [:name]
    attributes.each do |attribute|
      permitted_parameters[:sign_up] << attribute
      permitted_parameters[:account_update] << attribute
    end
  end
end