class CreateBirths < ActiveRecord::Migration[5.1]
  def change
    create_table :births do |t|
      t.string :title
      t.text :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
