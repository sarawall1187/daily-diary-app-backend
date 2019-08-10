class CreateDiaries < ActiveRecord::Migration[5.2]
  def change
    create_table :diaries do |t|
      t.string :todays_entry
      t.string :tomorrows_goal
      t.string :food_log
      t.integer :user_id

      t.timestamps
    end
  end
end
