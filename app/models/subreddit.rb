class Subreddit < ApplicationRecord
  validates :name, presence: true, length: { maximum: 255, minimum: 2 }
  has_many :posts

end
