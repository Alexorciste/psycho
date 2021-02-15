class Consultation < ApplicationRecord
  # belongs_to :user
  belongs_to :specialist
  belongs_to :user, optional: true
end
