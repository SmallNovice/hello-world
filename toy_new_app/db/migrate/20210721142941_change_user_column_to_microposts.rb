class ChangeUserColumnToMicroposts < ActiveRecord::Migration[6.1]
  def change
    change_column :microposts, :user, :user_id
  end
end
