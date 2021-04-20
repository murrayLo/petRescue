json.extract! pet_report, :id, :reporting, :date, :location, :animal, :breed, :colour, :image_data, :additionalInfo, :reportedBy, :created_at, :updated_at
json.url pet_report_url(pet_report, format: :json)
