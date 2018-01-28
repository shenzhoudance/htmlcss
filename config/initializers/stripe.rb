Rails.configuration.stripe = {
  :publishable_key => ENV['pk_test_ew7P7s0Q6luDRDPPVqOxpVK6'],
  :secret_key      => ENV['sk_test_3gdJyv5croczxLEP9L7vvHjF']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
