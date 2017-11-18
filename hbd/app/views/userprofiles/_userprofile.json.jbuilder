json.extract! userprofile, :id, :pseudo, :experience, :skills, :location, :about_me, :followers, :following, :friends, :user_id, :created_at, :updated_at
json.url userprofile_url(userprofile, format: :json)
