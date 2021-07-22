class ChangeCoNameToMicroposts < ActiveRecord::Migration[6.1]
  def change
    rename_column :micropost, :user, :user_id
  end
end
