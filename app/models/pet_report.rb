class PetReport < ApplicationRecord
    include ImageUploader::Attachment(:image)

    validates :reporting, presence: true
    validates :date, presence: true
    validates :location, presence: true
    validates :animal, presence: true
    validates :breed, presence: true
    validates :colour, presence: true
    validates :reportedBy, presence: true
end
