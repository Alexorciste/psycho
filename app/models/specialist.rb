class Specialist < ApplicationRecord
    belongs_to :category
    has_many :consultations, dependent: :destroy
    has_many_attached :photos
end
