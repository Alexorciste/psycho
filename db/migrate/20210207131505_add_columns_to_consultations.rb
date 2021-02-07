class AddColumnsToConsultations < ActiveRecord::Migration[6.0]
  def change
    add_column :consultations, :checkin, :date
    add_column :consultations, :checkout, :date
    add_column :consultations, :price, :integer
  end
end
