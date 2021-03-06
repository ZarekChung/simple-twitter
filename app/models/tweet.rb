class Tweet < ApplicationRecord
  belongs_to :user
  validates_length_of :description, maximum: 140
  has_many :replies, dependent: :destroy 

  has_many :likes, dependent: :destroy
  has_many :liked_users, through: :likes, source: :user

  def count_replies
    self.replies_count = self.replies.size
    self.save
  end

  def count_likes
    self.likes_count = self.likes.size
    self.save
  end

  def is_liked?(user)
    self.liked_users.include?(user)
  end
  
end
