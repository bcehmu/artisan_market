class CreateSubscribeLuthiers < ActiveRecord::Migration[6.0]
  def change
    create_table :subscribe_luthiers do |t|
      t.references :user, null: false, foreign_key: true
      t.references :luthier, null: false, foreign_key: true

      t.timestamps
    end
  end
end
