module ProductsHelper
	def print_price(price)
		number_to_currency price
	end

	def print_stock(stock, requested=1)
		total = stock-requested
		if stock.zero?
			content_tag(:strong, "Out Of Stock")
		elsif stock < requested
			
			content_tag(:strong, "Insufficient stock!!")
		else
			"#{total} aviliable"
		end
	end

end
