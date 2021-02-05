class CreateConsultations < ActiveRecord::Migration[6.0]
  def change
    create_table :consultations do |t|
      t.date :date
      t.time :hour
      t.references :user, null: false, foreign_key: true
      t.references :specialists, null: false, foreign_key: true

      t.timestamps
    end
  end
end
