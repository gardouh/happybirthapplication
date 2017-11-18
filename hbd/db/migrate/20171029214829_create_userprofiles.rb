class CreateUserprofiles < ActiveRecord::Migration[5.1]
  def change
    create_table :userprofiles do |t|
      t.string :pseudo
      t.text :experience
      t.text :skills
      t.string :location
      t.text :about_me
      t.integer :followers
      t.integer :following
      t.integer :friends
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
