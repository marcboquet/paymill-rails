class Plan < ActiveRecord::Base
  attr_accessible :name, :price, :paymill_id
  has_many :subscriptions
end
