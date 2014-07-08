class Post < ActiveRecord::Base
  belongs_to :user

  has_many :comments
  has_many :favorites
  has_many :likes

  validates :title, presence: true
  validates :description, presence: true
  validates :ingredients, presence: true
  validates :potential_allergens, presence: true

  def liked_by?(user)
    likes.exists?(user: user)
  end

end
