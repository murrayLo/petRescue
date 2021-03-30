class Found < ApplicationRecord
    # add validation for mandatory inputs
    validates :date, presence: true
    validates :location, presence: true
    validates :animal, presence: true
    validates :breed, presence: true
    validates :colour, presence: true
    validates :reporter, presence: true
    # no need to validate image or additionalInfo, as these fields are not mandatory
end
