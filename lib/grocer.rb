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
    new_cart.length == 0 ? : new_cart << item
    binding.pry
  end
end


  