module OrderItemsHelper

  def empty_order_item
  	self.quantity.zero?
  end
  
end
