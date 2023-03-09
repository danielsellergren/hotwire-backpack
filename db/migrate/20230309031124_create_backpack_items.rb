class CreateBackpackItems < ActiveRecord::Migration[7.0]
  def change
    create_table :backpack_items do |t|
      t.references :backpack, null: false, foreign_key: true
      t.references :item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
