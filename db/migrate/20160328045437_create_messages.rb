class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :sender_id
      t.integer :receiver_id
      t.string :title
      t.text :body
      t.text :body_html
      t.datetime :read_at
      t.datetime :deleted_at

      t.timestamps null: false
    end

    add_index :messages, [:receiver_id]
  end
end
