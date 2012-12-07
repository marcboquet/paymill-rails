class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.integer :plan_id
      t.string :email
      t.string :name
      t.string :paymill_id

      t.timestamps
    end
  end
end
