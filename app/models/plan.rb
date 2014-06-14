class Plan < ActiveRecord::Base
  attr_accessible :name, :price, :paymill_id, :interval, :currency
  has_many :subscriptions
end
