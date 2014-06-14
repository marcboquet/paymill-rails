class AddAttributesToPlans < ActiveRecord::Migration
  def change
    add_column :plans, :interval, :string
    add_column :plans, :currency, :string
  end
end
