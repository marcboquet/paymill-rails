require 'paymill'

namespace :paymill do
  desc "Import all subscription plans (Offers) from paymill"
  task :import_plans => :environment do
    
    Plan.destroy_all
    
    offers = Paymill::Offer.all
    offers.each do |offer|
      Plan.create paymill_id: offer.id, name: offer.name, price: offer.amount / 100.0
    end
  end
end