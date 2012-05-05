class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
      t.date :date
      t.time :start_time
      t.time :end_time
      t.timestamps
    end
  end
end
