class AddColorAgain < ActiveRecord::Migration
  def change
    remove_column :users, :color
  end
end
