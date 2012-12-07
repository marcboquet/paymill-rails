# Paymill subscriptions with Rails

Sample app for a subscription-based rails site using [Paymill](https://paymill.com/) to process payments.  
The code is based on [Railscast #288](http://railscasts.com/episodes/288-billing-with-stripe) (Billing with Stripe)

## Usage

Register for a test account at [paymill.com](https://paymill.com/) and create the subscription plans (they called them Offers)

Setup the app:

    bundle
    rake db:migrate
    
    
Replace the test keys in `config/initializers/paymill.rb` for your own paymill API keys.

Run `rake paymill:import_plans` to get the plans and their IDs from paymill into the app.

That's it! Run `rails server` and it should work.

## More information

Paymill API reference: https://www.paymill.com/en-gb/documentation-3/reference/api-reference/index.html

`paymill-ruby` gem: https://github.com/dkd/paymill-ruby