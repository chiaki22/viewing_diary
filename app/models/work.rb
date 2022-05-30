class Work < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category, :star

  validates :title, :day,
  validates :category_id, :star_id numericality: { other_than: 1 , message: "を選択してください"} 

end
