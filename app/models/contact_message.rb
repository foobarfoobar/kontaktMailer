class ContactMessage < ActiveRecord::Base
  validates :name, length: {:minimum => 2}
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, format: VALID_EMAIL_REGEX, presence: true
  
  validates :message, presence: true
end
