class AddColorToUser01072014 < ActiveRecord::Migration
  def change
    add_column :users, :color, :string
  end
end
