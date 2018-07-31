module ProductsHelper
	def print_price(price)
		number_to_currency price
	end

	def print_stock(stock)
		if stock.zero?
			content_tag(:strong, "Out Of Stock")
		else
			"#{stock} aviliable"
		end
	end

end
