class CreateWords < ActiveRecord::Migration[6.1]
  def change
    create_table :words do |t|
      t.integer :user_id, null: false
      t.string :content, null: false
      t.string :name, null: false
      t.integer :genre, null: false, default: "0"

      t.timestamps
    end
  end
end
