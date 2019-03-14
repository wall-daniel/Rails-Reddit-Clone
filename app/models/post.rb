class Post < ApplicationRecord
  belongs_to :subreddit
  validates :user_id, presence: true
  validates :content, presence: true
end
