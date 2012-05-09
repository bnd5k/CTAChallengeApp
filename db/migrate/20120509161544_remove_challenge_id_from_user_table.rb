class RemoveChallengeIdFromUserTable < ActiveRecord::Migration
  def up
    remove_column :users, :challenge_id
  end

  def down
  end
end
