class CreateNotifications < ActiveRecord::Migration[5.1]
  def change
    create_table :notifications do |t|
      t.references :user, foreign_key: true
      t.references :gift, foreign_key: true
      t.references :friend, foreign_key: true
      t.string :type_notification
      t.string :link_notifcation

      t.timestamps
    end
  end
end
