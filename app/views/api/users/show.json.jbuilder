json.partial! "user.json.jbuilder", user: @user

# json.products do
#   json.array! @user.products, partial: 'api/products/product', as: :product
# end

json.conversations do
  json.array! @user.conversations, partial: 'api/conversations/conversation', as: :conversation
end

# json.user do
#   json.partial! @product.user, partial: "api/users/user", as: :users
# end



# json.formatted do
#   json.qoh product.qoh
#   json.price product.price
# end