class SubscriptionsController < ApplicationController
  before_action :check_env
  def new

  end

  def create
    customer = Stripe::Customer.create(
        email: params[:stripeEmail],
        source: stripe_token(params)
    )

    charge = Stripe::Charge.create(
        customer: customer.id,
        amount: 1000,
        description: 'Subscription to News Service',
        currency: 'sek'
    )
    if charge.paid?
      current_user.update_attribute(:subscriber, true)
      message = 'Welcome as a subscriber'
    else
      message = 'Your payment did not clear. Subscription could not be purchased!'
    end
    redirect_to root_path, notice: message
  end



  private
  def stripe_token(params)
    Rails.env.test? ? generate_test_token : params[:stripeToken]
  end

  def generate_test_token
    StripeMock.generate_card_token
  end

  def check_env
    StripeMock.start if Rails.env.test?
  end
end
