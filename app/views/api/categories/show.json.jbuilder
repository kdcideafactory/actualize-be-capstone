json.partial! "category.json.jbuilder", category: @category

json.products do
  json.array! @category.products, partial: 'api/products/product', as: :product
end