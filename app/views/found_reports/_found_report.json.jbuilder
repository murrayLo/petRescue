json.extract! found_report, :id, :date, :location, :animal, :breed, :colour, :image, :additionalInfo, :reporter, :created_at, :updated_at
json.url found_report_url(found_report, format: :json)
