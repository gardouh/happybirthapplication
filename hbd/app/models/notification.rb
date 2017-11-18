class Notification < ApplicationRecord
  belongs_to :user
  belongs_to :gift
  belongs_to :friend
end
