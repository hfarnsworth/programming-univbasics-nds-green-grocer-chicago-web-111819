def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  
  index = 0 
  
  while index < collection.length do 
    if collection[index][:item] == name
      return collection[index]
    end
    index += 1 
  end
  
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  
  updated_cart = []
  item_index = 0 
  duplicate_index = 0 
  
  while item_index < cart.length do 
    item = cart[item_index][:item]
    
    if find_item_by_name_in_collection(item,updated_cart)
      index = 0 
      while index < updated_cart.length do 
        if updated_cart[index][:item] == item
          updated_cart[index][:count] += 1 
          index += 1 
        else
          index += 1 
        end
      end
    else
      updated_cart[duplicate_index] = cart[item_index]
      updated_cart[duplicate_index][:count] = 1 
      duplicate_index += 1 
    end
    item_index += 1 
  end
  updated_cart
end

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  
  adjusted_cart = cart
  cart_index = 0 
  while cart_index < adjusted_cart.length do 
    coupon_index = 0 
    
    while coupon_index < coupons.length do
      if find_item_by_name_in_collection(name, collection)
  
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
