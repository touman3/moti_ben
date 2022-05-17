class CreateGoalTimes < ActiveRecord::Migration[6.1]
  def change
    create_table :goal_times do |t|
      t.integer :goal_id, null: false
      t.integer :user_id, null: false
      t.datetime :start_time, null: false
      t.datetime :finish_time, null: false
      t.integer :total, null: false
      t.datetime :day, null: false

      t.timestamps
    end
  end
end
