class CreateSubscribeMedia < ActiveRecord::Migration[6.0]
  def change
    create_table :subscribe_media do |t|
      t.references :user, null: false, foreign_key: true
      t.references :medium, null: false, foreign_key: true

      t.timestamps
    end
  end
end
