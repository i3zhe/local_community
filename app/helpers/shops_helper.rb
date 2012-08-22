module ShopsHelper
	def join_tags(shop)
		shop.tags.map { |t| t.name }.join(', ')
	end
end
