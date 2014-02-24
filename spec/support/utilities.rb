def full_title(page_title)
	base_title = "Ruby on Rails Tutorial Sample App"
	if page_title.empty?
	   base_title
	   #puts "empty"
	else
		"#{base_title} | #{page_title}"
		#puts " #{base_title} | #{page_title} "
	end
end