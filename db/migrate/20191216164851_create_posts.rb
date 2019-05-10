class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.references :company, null: false, foreign_key: true
      t.integer :kind
      t.date :date_at
      t.references :sector, null: false, foreign_key: true
      t.string :title
      t.string :content

      t.timestamps
    end
  end
end
