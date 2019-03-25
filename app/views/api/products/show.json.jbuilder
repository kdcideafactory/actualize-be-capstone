json.partial! "product.json.jbuilder", product: @product


json.products do
  json.array! @product.images, partial: 'api/images/image', as: :image
end