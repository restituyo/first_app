require 'digest/md5' 

module UsersHelper		

	def gravatar_for(user, options = { size: 50 } )
			gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
			size = options[:size]
			gravatar_url = "http://www.gravatar.com/avatar/#{gravatar_id}.png?s=#{size}"
			image_tag(gravatar_url, alt: user.name, class: "gravatar")
	end

	def signed_in?
		!current_user.nil?
	end 

end


			
