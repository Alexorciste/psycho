class Category < ApplicationRecord
    has_many :specialists
    has_one_attached :photo
end
