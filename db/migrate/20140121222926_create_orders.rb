class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :status, default:'ordered'
      t.integer :user_id, null:false

      t.timestamps
    end
  end
end
