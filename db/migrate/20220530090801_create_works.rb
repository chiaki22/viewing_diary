class CreateWorks < ActiveRecord::Migration[6.0]
  def change
    create_table :works do |t|
      t.string  :title,       null: false
      t.integer :category_id, null: false
      t.date    :day,         null: false
      t.integer :star_id,     null: false
      t.text    :memo
      t.timestamps
    end
  end
end
 