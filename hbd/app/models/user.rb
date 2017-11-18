class User < ApplicationRecord
	has_many :gifts
	has_many :notes
	has_many :friends
	has_many :births
	 def self.create_with_omniauth(auth)
	   create! do |user|
	     user.provider = auth['provider']
	     user.uid = auth['uid']
	     if auth['info']
	       user.name = auth['info']['name'] || ""
	       user.email = auth['info']['email'] || ""

	     end
	   end
	 end

end
