class OrderItem < ApplicationRecord
  belongs_to :product
  belongs_to :order

  validates :order_id, presence: true
  validates :product_id, presence: true
  validates :quantity, numericality: {only_integer: true, greater_than: 0}
 
  def subtotal
  	self.quantity * self.product.price
  end


end
