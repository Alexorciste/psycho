class Consultation < ApplicationRecord
  # belongs_to :user
 
  belongs_to :specialist
  belongs_to :user, optional: true

  validates :checkin, :checkout, presence: true
  validate :checkout_after_checkin

  private

  def checkout_after_checkin
    return if checkout.blank? || checkin.blank?

    if checkout < checkin
      errors.add(:checkout, "must be after the start date")
    end
 end

end
