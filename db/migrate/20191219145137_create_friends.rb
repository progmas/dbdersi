class CreateFriends < ActiveRecord::Migration[6.0]
  def change
    create_table :friends do |t|
      t.references :user, null: false, foreign_key: true
      t.references :other_user, null: false, foreign_key: {to_table: :users}
      t.integer :status

      t.timestamps
    end
  end
end
