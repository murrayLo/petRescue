class CreatePetReports < ActiveRecord::Migration[6.1]
  def change
    create_table :pet_reports do |t|
      t.string :reporting
      t.datetime :date
      t.string :location
      t.string :animal
      t.string :breed
      t.string :colour
      t.text :image_data
      t.text :additionalInfo
      t.string :reportedBy

      t.timestamps
    end
  end
end
