class CreateGifts < ActiveRecord::Migration[5.1]
  def change
    create_table :gifts do |t|
      t.string :name_gift
      t.string :link_gift
      t.integer :price_gift
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
