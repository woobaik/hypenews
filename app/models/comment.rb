class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :shoe

  validates :body, presence: true
end
