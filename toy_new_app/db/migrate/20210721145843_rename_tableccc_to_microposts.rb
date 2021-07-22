class RenameTablecccToMicroposts < ActiveRecord::Migration[6.1]
  def change
    rename_table :mic, :microposts
  end
end
