class Recommendation < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category

  has_one_attached :image

  validates :title, :category_id, presence: true
  validates :title, length: { maximum: 20 }
  validates :memo, length: { maximum: 30 }

end
