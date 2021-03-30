class CreateFounds < ActiveRecord::Migration[6.1]
  def change
    create_table :founds do |t|
      t.datetime :date
      t.string :location
      t.string :animal
      t.string :breed
      t.string :colour
      t.string :image
      t.text :additionalInfo
      t.string :reporter

      t.timestamps
    end
  end
end
