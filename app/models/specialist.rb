class Specialist < ApplicationRecord
    belongs_to :category
    has_many :consultations
    has_many_attached :photos
end
