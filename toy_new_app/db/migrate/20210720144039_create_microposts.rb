class CreateMicroposts < ActiveRecord::Migration[6.1]
  def change
    create_table :microposts do |t|
      t.string :content
      t.integer :user

      t.timestamps
    end
  end
end
