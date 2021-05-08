class Message < ApplicationRecord

    belongs_to :user

    validates :subject, presence: true
    validates :body, presence: true
    validates :username_to, presence: true
    validates :user_id, presence: true
    
end
