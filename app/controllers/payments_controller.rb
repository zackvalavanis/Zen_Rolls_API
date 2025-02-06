class PaymentsController < ApplicationController
  def create
    Stripe.api_key = import.meta.env.STRIPE_SECRET_KEY

    # Create a payment intent with the total amount (multiplied by 100 for cents)
    payment_intent = Stripe::PaymentIntent.create(
      amount: params[:total_amount],
      currency: 'usd',
      metadata: { integration_check: 'accept_a_payment' }
    )

    render json: { client_secret: payment_intent.client_secret }
  end
end
