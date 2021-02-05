class AddCategoryToSpecialists < ActiveRecord::Migration[6.0]
  def change
    add_reference :specialists, :category, null: false, foreign_key: true
  end
end
