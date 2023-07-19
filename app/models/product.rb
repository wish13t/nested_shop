class Product < ApplicationRecord
  has_many :product_variants, dependent: :destroy
  accepts_nested_attributes_for :product_variants
end
