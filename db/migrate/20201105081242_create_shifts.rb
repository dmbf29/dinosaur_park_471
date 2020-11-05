class CreateShifts < ActiveRecord::Migration[6.0]
  def change
    create_table :shifts do |t|
      t.references :dinosaur, null: false, foreign_key: true
      t.references :attraction, null: false, foreign_key: true

      t.timestamps
    end
  end
end
