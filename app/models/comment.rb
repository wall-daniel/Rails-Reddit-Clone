class Comment < ApplicationRecord
  validates :user_id, presence: true
  validates :post_id, presence: true
  validates :comment, presence: true, length: { maximum: 256 }

  belongs_to :user
  belongs_to :post
end
