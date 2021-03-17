class Category < ApplicationRecord
    has_many :specialists, dependent: :destroy
    # has_many :consultations, dependent: :destroy
    has_one_attached :photo
end
