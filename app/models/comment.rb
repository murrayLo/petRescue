class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :pet_report
end
