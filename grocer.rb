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
  return nil
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  consolidated = []
  index = 0
  
  while index < cart.length do
    item = find_item_by_name_in_collection(cart[index][:item], consolidated)
    if !item
      cart[index][:count] = 1
      consolidated.push(cart[index])
    else
      item[:count] += 1
    end
    
    index += 1
  end
  
  return consolidated
end

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  
  index = 0
  
  while index < coupons.length do
    current_coupon = coupon[index]
    if check_coupon(cart, current_coupon])
      update_cart_with_coupon(cart, current_coupon)
    end
    
    index += 1
  end
  
end

def check_coupon(cart, coupon)
  index = 0
  
  while index < cart.length do
    
    item = cart[index]
    if item[:item] == coupons[:item] && item[:count] >= coupons[:num]
      return true
  end
  return false
end

def update_cart_with_coupon(cart, coupon)
  
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
