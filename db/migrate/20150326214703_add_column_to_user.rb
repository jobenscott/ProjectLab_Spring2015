class AddColumnToUser < ActiveRecord::Migration
  def change
    def change
    add_column :users, :name, :string
    add_column :users, :bio, :text
  end
  end
end
