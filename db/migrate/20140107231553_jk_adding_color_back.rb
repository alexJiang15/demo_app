class JkAddingColorBack < ActiveRecord::Migration
  def up
    add_column :users, :color, :string
  end

  def down
    remove_column :users, :color, :string
  end
end
