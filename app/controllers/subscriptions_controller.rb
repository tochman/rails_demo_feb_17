class SubscriptionsController < ApplicationController

  def new

  end

  def create
    customer = Stripe::Customer.create(
        email: params[:stripeEmail],
        source: params[:stripeToken]
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
  def payment_cleared?

  end
end
