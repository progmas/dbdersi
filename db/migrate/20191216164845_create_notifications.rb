class CreateNotifications < ActiveRecord::Migration[6.0]
  def change
    create_table :notifications do |t|
      t.references :user, null: false, foreign_key: true
      t.string :content
      t.boolean :is_seen

      t.timestamps
    end
  end
end
