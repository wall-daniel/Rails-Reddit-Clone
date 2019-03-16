class User < ApplicationRecord
  validates :name, presence: true, length: { minimum: 2, maximum: 63 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { minimum: 5, maximum: 255 },
                          format: { with: VALID_EMAIL_REGEX }
  #validates :password_digest, presence: true
  has_secure_password

  has_many :posts
  has_many :comments
end
