class CreateUserChallenges < ActiveRecord::Migration
  def change
    create_table :user_challenges do |t|
      t.integer :user_id
      t.integer :challenge_id
      t.timestamps
    end
    add_index :user_challenges, :user_id
    add_index :user_challenges, :challenge_id
    add_index :user_challenges, [:user_id, :challenge_id],  :unique => true 
  end
end
