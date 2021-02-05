class CreateSpecialists < ActiveRecord::Migration[6.0]
  def change
    create_table :specialists do |t|
      t.string :lastname
      t.string :firstname
      t.string :profession
      t.text :description
      t.integer :rating

      t.timestamps
    end
  end
end
