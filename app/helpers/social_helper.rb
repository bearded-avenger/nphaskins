module SocialHelper

	def social_get_desc
		if is_post && !@post.excerpt.nil?
			@post.excerpt
		else
			t(:site_description)
		end

	end

	def social_get_type
		if is_post
			"article"
		else
			"website"
		end
	end

	def social_get_prefix
		if is_post
			"og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# article: http://ogp.me/ns/article#"
		else
			"og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# website: http://ogp.me/ns/website#"
		end
	end

	def social_get_title

		if is_post
			@post.title unless @post.nil?
		else
			t(:site_name)
		end

	end

	def social_get_url
		request.original_url
	end

	def social_get_img(name, prop)

		if is_post
			img = @post.image_data
		else
			img = 'http://d2x64rp64bzfmq.cloudfront.net/nphaskins-cover.png'
		end

		"<meta #{name}=#{prop}:image content=#{img}>".html_safe

	end

	def is_post
		'show' == params['action'] && 'posts' == params['controller']
	end

end