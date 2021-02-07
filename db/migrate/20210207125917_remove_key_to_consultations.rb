class RemoveKeyToConsultations < ActiveRecord::Migration[6.0]
  def change
    remove_column :consultations, :specialists_id
  end
end
