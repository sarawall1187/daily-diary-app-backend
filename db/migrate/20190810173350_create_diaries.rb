class CreateDiaries < ActiveRecord::Migration[5.2]
  def change
    create_table :diaries do |t|
      t.text :todays_entry
      t.text :tomorrows_goal
      t.text :food_log
      t.integer :user_id

      t.timestamps
    end
  end
end
