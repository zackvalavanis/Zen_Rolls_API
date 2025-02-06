class PaymentsController < ApplicationController
  def create
    # Set up your Stripe secret key
    Stripe.api_key = 'your-stripe-secret-key'

    # Create a payment intent with the total amount (multiplied by 100 for cents)
    payment_intent = Stripe::PaymentIntent.create(
      amount: params[:total_amount],
      currency: 'usd',
      metadata: { integration_check: 'accept_a_payment' }
    )

    render json: { client_secret: payment_intent.client_secret }
  end
end
