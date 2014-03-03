require 'digest/md5' 

module UsersHelper

	def gravatar_for(user)
		gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
		gravatar_url = "http://www.gravatar.com/avatar/#{gravatar_id}"
		image_tag(	gravatar_url, alt: user.name, class: "gravatar")
	end

end


				# email_address = email
				# 	hash = Digest::MD5.hexdigest(email_address)
				# 	image_src = "http://www.gravatar.com/avatar/#{hash}"
				# 	image_tag image_src







