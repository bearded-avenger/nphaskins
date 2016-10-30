module ApplicationHelper
	def title(*page_title)
    if Array(page_title).size.zero?
      content_for?(:title) ? content_for(:title) : t(:site_name)
    else
      content_for :title, (Array(page_title) << t(:site_name)).join(' - ')
    end
  end
end
