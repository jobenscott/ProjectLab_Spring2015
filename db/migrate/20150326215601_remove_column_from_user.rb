class RemoveColumnFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :name, :string
    remove_column :users, :bio, :text
  end
end
