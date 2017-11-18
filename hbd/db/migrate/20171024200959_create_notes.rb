class CreateNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :notes do |t|
      t.string :title
      t.string :text
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
