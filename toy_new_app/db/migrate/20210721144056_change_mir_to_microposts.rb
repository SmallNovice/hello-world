class ChangeMirToMicroposts < ActiveRecord::Migration[6.1]
  def change
    rename_table :to_microposts, :micropost
    
  end
end
