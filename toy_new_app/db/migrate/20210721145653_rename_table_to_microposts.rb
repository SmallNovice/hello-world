class RenameTableToMicroposts < ActiveRecord::Migration[6.1]
  def change
    rename_table :micropost, :mic
  end
end
