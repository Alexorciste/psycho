class Review < ApplicationRecord
  belongs_to :user, optional: true
  validates :content, length: { minimum: 20 }

  has_one_attached :photo
end
