class PetReport < ApplicationRecord

    belongs_to :user
    has_many :comments

    include ImageUploader::Attachment(:image)

    validates :reporting, presence: true
    validates :date, presence: true
    validates :location, presence: true
    validates :animal, presence: true
    validates :breed, presence: true
    validates :colour, presence: true
    validates :image, presence: true
    validates :user_id, presence: true
end
