class Post < ApplicationRecord
  belongs_to :subreddit
  validates :subreddit_id, presence: true
  validates :content, presence: true
end
