json.extract! lost_report, :id, :date, :location, :animal, :breed, :colour, :image, :additionalInfo, :reporter, :created_at, :updated_at
json.url lost_report_url(lost_report, format: :json)
