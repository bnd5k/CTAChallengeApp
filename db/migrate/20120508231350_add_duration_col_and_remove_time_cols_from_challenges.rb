class AddDurationColAndRemoveTimeColsFromChallenges < ActiveRecord::Migration
  def change
    add_column :challenges, :duration, :time
    remove_column :challenges, :start_time
    remove_column :challenges, :end_time
  end
end
