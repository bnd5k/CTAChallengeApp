class AddForeignKeyOnUsers < ActiveRecord::Migration
  def up
    add_column :users, :challenge_id, :integer
  end

  def down
    remove_column :users, :challenge_id
  end
end
