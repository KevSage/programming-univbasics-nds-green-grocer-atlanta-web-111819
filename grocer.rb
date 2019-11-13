require 'pry'

def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  index = 0
  while index < collection.length
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
  cart_item = 0
  while cart_item < cart.length
    #puts new item into a variable "new_addtion"
    #New item can be called by the previous method
    new_additon = find_item_by_name_in_collection(cart[cart_item][:item], updated_cart)
    if new_additon != nil
      #if new item to be added is currently in the cart, add 1 to the item count
      new_additon[:count] += 1
    else
      #Since item is not in currently in the cart, we will create the item from scratch
      new_additon = {
        :item => cart[cart_item][:item],
        :price => cart[cart_item][:price],
        :clearance => cart[cart_item][:clearance],
        :count => 1,
      }
      #We then add the new additon to the updated cart
      updated_cart << new_additon
  end
   cart_item += 1
end
#Return the updated cart
updated_cart
end

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
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
