class Work < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category, :star

  has_one_attached :image

  validates :title, :day, :category_id, :star_id, presence: true
  validates :title, length: { maximum: 40 }
  validates :memo, length: { maximum: 1000 }

end
