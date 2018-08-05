class Order < ApplicationRecord
	has_many :order_items, dependent: :destroy

	def total
		total = []
		self.order_items.each do |s|
			total.push(s.subtotal.to_i)
		end
		total.sum
	end

end
