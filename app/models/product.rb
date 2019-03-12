class Product < ApplicationRecord

belongs_to :user
belongs_to :category

has_many :images
has_many :conversations


# def images
#   Images.where(product_id: id)
# end

end
