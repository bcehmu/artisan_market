class CreateLuthiers < ActiveRecord::Migration[6.0]
  def change
    create_table :luthiers do |t|
      t.references :user, null: false, foreign_key: true
      t.string :description

      t.timestamps
    end
  end
end
