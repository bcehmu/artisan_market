class CreatePendingUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :pending_users do |t|
      t.references :user, null: false, foreign_key: true
      t.string :cause

      t.timestamps
    end
  end
end
