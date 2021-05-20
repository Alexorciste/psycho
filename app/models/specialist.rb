class Specialist < ApplicationRecord
    belongs_to :category
    has_many :consultations, dependent: :destroy
    has_many_attached :photos

    def unavailable_dates
        consultations.pluck(:checkin, :checkout).map do |range|
          { from: range[0], to: range[1] }
        end
      end

end
