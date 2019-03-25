json.partial! "image.json.jbuilder", image: @image


json.products do
  json.array! @product.images, partial: 'api/images/image', as: :image
end