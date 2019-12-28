require 'pry'

def find_item_by_name_in_collection(name, collection) #looks for an item
 index = 0
 while index < collection.length do
    if collection[index][:item] == name 
      return collection[index]
      end
  index += 1
 end 
end

def consolidate_cart(cart)
  new_cart = [] #returns an array for the new cart
  index = 0 
while index < cart.length do 
  new_cart_item = find_item_by_name_in_collection(cart[index][:item], new_cart) #returns item if it finds it, otherwise returns nil
  if new_cart_item #if this variable has a truthy value (anything in Ruby except for nil and false)
  new_cart_item[:count] += 1
else 
  new_cart_item = {
    :item => cart[index][:item],
    :price => cart[index][:price],
    :clearance => cart[index][:clearance],
    :count => 1  #adds the :count key/value pair and sets its value to 1
  }
new_cart << new_cart_item  #shoves the new item into the new cart, including the count
end
index += 1
end
  new_cart  # return [{:item => "AVOCADO", :price => 3.00, :clearance => true, :count => 2}]
end

def apply_coupons(cart, coupons)  #Remember, this method *SHOULD* update the cart
  index = 0 
  while index < coupons.length do 
    cart_item = find_item_by_name_in_collection(coupons[index][:item], cart) #finds item on the coupon and sees if it's in the cart
    
    index += 1 
  end
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
