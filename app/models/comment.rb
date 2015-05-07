class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :forum
  has_many :ratings

  validates :content, :user_id, :forum_id, presence: true
end
