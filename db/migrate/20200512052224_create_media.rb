class CreateMedia < ActiveRecord::Migration[6.0]
  def change
    create_table :media do |t|
      t.string :name
      t.string :description
      t.references :musician, null: false, foreign_key: true
      t.string :link

      t.timestamps
    end
  end
end
