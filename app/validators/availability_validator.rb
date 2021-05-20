class AvailabilityValidator < ActiveModel::EachValidator

    def validate_each(record, attribute, value)
      consultations = Consultation.where(["spacialist_id =?", record.specialist_id])
      date_ranges = consultations.map { |b| b.checkin..b.checkout }
  
      date_ranges.each do |range|
        if range.include? value
          record.errors.add(attribute, "not available")
        end
      end
    end
  end