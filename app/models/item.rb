class Item < ApplicationRecord
  has_many :backpack_items
  has_many :backpacks, through: :backpack_items
end
