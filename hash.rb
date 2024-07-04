PRODUCTS = {
  "milk" => 200,
  "apple" => 150,
  "potato" => 100,
}

def add_product(product, price)
  if PRODUCTS[product]
    raise "Product already exists"
  end
  PRODUCTS[product] = price
end

def remove_product(product)
  PRODUCTS.delete(product)
end

def change_price(product, new_price)
  unless PRODUCTS[product]
    raise "Product does not exist"
  end
  PRODUCTS[product] = new_price
end

def print_products
  PRODUCTS.each { |product, price| puts "#{product}: #{price}" }
end

print_products
puts "-----------------"
add_product("banana", 500)
print_products
puts "-----------------"
remove_product("apple")
print_products
puts "-----------------"
change_price("potato", 150)
print_products