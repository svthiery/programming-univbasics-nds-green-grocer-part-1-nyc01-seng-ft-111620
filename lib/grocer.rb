require 'pry'

def find_item_by_name_in_collection(name, collection)
  collection.find do |item|
    item[:item] == name
  end
end

def consolidate_cart(cart)
  new_cart = []
  cart.map do |item|
    item[:count] = 1    
  end
  cart.each do |item|
    if new_cart.length == 0 
      new_cart << item
    elsif new_cart.length > 0 
      new_cart.each do |new_cart_item|
        if new_cart_item[:item] == item[:item]
          new_cart_item[:count] += 1
        else 
          new_cart << item
          break
        end
      end
    end
  end
  binding.pry
  return new_cart
end


  