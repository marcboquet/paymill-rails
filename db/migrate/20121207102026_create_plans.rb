class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.string :paymill_id
      t.string :name
      t.float :price

      t.timestamps
    end
  end
end
