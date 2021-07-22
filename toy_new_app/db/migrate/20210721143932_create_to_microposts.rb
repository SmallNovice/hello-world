class CreateToMicroposts < ActiveRecord::Migration[6.1]
  def change
    create_table :to_microposts do |t|
      t.string :context
      t.integer :user

      t.timestamps
    end
  end
end
