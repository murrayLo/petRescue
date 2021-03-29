class CreateLostReports < ActiveRecord::Migration[6.1]
  def change
    create_table :lost_reports do |t|
      t.datetime :date
      t.string :location
      t.string :animal
      t.string :breed
      t.string :colour
      t.string :image
      t.string :additionalInfo
      t.string :reporter

      t.timestamps
    end
  end
end
