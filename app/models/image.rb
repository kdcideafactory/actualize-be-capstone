class Image < ApplicationRecord

belongs_to :product
belongs_to :user
belongs_to :category

end
