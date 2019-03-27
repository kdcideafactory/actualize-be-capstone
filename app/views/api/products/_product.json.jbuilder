json.id product.id
json.name product.name
json.category_id product.category_id
json.description product.description
json.price product.price
json.qoh product.qoh
json.user_id product.user.id
json.user_name product.user.name
# json.image product.images[0].url


json.images do
  json.array! product.images.each do |image|
    json.url image.url
  end
end