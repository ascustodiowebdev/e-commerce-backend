class CartItemsController < ApplicationController
  def create
    item = Item.find(params[:item_id])
    cart_item = current_cart.add_item(item)
    if cart_item.save
      redirect_to current_cart, notice: 'Item added to cart.'
    else
      redirect_to items_path, alert: 'Unable to add item to cart.'
    end
  end

  def destroy
    cart_item = CartItem.find(params[:id])
    cart_item.destroy
    redirect_to current_cart, notice: 'Item removed from cart.'
  end
end
