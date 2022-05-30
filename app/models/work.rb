class Work < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category, :star

  has_one_attached :image

  validates :title, :day, presence: true
  validates :title, length: { maximum: 40 }
  validates :memo, length: { maximum: 1000 }
  validates :category_id, :star_id, numericality: { other_than: 1, message: 'を選択してください'} 

end
