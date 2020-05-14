class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :category
      t.string :description
      t.references :luthier, null: false, foreign_key: true
      t.integer :base_price

      t.timestamps
    end
  end
end
