BackpackItem.destroy_all
Backpack.destroy_all
Item.destroy_all

Backpack.create!(
  name: "Danny's Backpack",
)

%w[Hammer Notebook Phone Hat Alligator].each do |item|
  Item.create!(
    name: item,
  )
end
