class Backpack < ApplicationRecord
  has_many :backpack_items
  has_many :items, through: :backpack_items
end
