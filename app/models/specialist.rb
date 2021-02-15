class Specialist < ApplicationRecord
    belongs_to :category
    has_many :consultations
    has_one_attached :photo
end
