class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.string :subject
      t.text :body
      t.string :username_from
      t.string :username_to
      t.integer :user_id_from
      t.integer :user_id_to

      t.timestamps
    end
  end
end
