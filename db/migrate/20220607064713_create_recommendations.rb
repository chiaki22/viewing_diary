class CreateRecommendations < ActiveRecord::Migration[6.0]
  def change
    create_table :recommendations do |t|
      t.string  :title,       null: false
      t.integer :category_id, null: false
      t.text    :memo
      t.timestamps
    end
  end
end
