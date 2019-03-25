class Product < ApplicationRecord

  belongs_to :user
  belongs_to :category

  has_many :images


# def images
#   Images.where(product_id: id)
# end

end
