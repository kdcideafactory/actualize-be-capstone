class Image < ApplicationRecord

  has_secure_password

  belongs_to :user
  belongs_to :category
  belongs_to :product


end
