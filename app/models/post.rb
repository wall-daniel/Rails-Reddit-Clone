class Post < ApplicationRecord
  belongs_to :subreddit
  has_many :comments

  validates :subreddit_id, presence: true
  validates :content, presence: true
end
