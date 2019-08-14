class ChangeDiariesTableToEntriesTable < ActiveRecord::Migration[5.2]
  def change
    rename_table :diaries, :entries
  end
end
