class Forum < ActiveRecord::Base
  belongs_to :user
  belongs_to :comment

  validates :game_title, :game_category, :topic_title, :topic_content, :user_id, presence: true
  validates_length_of :topic_title, minimum: 10
  validates_length_of :topic_content, minimum: 10

end
