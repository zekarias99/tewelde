module ApplicationHelper

# Returns the full title on a per_page basis.
	def full_title(page_title)
		base_title = "Tewelde"
		if page_title.empty?
           base_title
		else
			"#{base_title} | #{page_title}"
	    end
    end
end
