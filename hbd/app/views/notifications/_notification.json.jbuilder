json.extract! notification, :id, :user_id, :gift_id, :friend_id, :type_notification, :link_notifcation, :created_at, :updated_at
json.url notification_url(notification, format: :json)
