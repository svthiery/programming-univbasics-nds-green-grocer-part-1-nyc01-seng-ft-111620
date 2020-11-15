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
#    if new_cart.length == 0 
#      new_cart << item
#    end
    if find_item_by_name_in_collection(item[:item], new_cart) == false
      new_cart << item
    else 
      item_index = new_cart.index(find_item_by_name_in_collection(item[:item], new_cart))
      new_cart[item_index][:count] += 1 
    end
  end
  return new_cart
end


  