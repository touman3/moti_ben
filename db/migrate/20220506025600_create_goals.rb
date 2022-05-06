class CreateGoals < ActiveRecord::Migration[6.1]
  def change
    create_table :goals do |t|
      t.string :name, null: false
      t.text :future, null: false
      t.text :now, null: false
      t.text :past, null: false
      t.datetime :start_date, null: false
      t.datetime :finish_date, null: false
      t.integer :study_time, null: false

      t.timestamps
    end
  end
end
