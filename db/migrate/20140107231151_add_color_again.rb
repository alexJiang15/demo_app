class AddColorAgain < ActiveRecord::Migration
  def change
    remove_column :users, :color, :string
  end
end
