class Micropost < ApplicationRecord
  belongs_to :user
  
  # お気に入り追加
  has_many :favorites, dependent: :destroy
  has_many :liked_by, through: :favorites, source: :user
  # ここまでお気に入り追加
  
  validates :content, presence: true, length: { maximum: 255 }
end