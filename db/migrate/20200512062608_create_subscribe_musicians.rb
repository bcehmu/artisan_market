class CreateSubscribeMusicians < ActiveRecord::Migration[6.0]
  def change
    create_table :subscribe_musicians do |t|
      t.references :user, null: false, foreign_key: true
      t.references :musician, null: false, foreign_key: true

      t.timestamps
    end
  end
end
