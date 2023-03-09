class CreateBackpacks < ActiveRecord::Migration[7.0]
  def change
    create_table :backpacks do |t|
      t.text :name

      t.timestamps
    end
  end
end
