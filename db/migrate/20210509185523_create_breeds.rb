class CreateBreeds < ActiveRecord::Migration[6.1]
  def change
    create_table :breeds do |t|
      t.string :dogs
      t.string :cats

      t.timestamps
    end
  end
end
