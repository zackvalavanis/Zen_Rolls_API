class PaymentsController < ApplicationController
  def create
    require 'stripe'

    Stripe.api_key = ENV['STRIPE_SECRET_KEY']

    payment_intent = Stripe::PaymentIntent.create(
      amount: params[:total_amount],
      currency: 'usd',
      metadata: { integration_check: 'accept_a_payment' }
    )

    # Log the payment intent details
    Rails.logger.info("PaymentIntent created: #{payment_intent.inspect}")

    # Return client_secret in the response
    render json: { client_secret: payment_intent.client_secret }
  end
end
