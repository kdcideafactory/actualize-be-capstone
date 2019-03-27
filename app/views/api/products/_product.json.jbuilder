json.id product.id
json.name product.name
json.category_id product.category_id
json.description product.description
json.price product.price
json.qoh product.qoh
json.user_id current_user.id
json.user_name product.user.name


# json.images do
#   json.array! @product.images, partial: 'api/images/image', as: :image
# end