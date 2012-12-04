module Admin::PagesHelper
	def check_permalink(page)
		@homepage ||= Page.first_page
		if @homepage.id == page.id
			"/"
		else
			page.active ? permalink_path(page.permalink) : "#"			
		end
	end
end
