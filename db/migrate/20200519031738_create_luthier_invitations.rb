class CreateLuthierInvitations < ActiveRecord::Migration[6.0]
  def change
    create_table :luthier_invitations do |t|
      t.references :luthier, null: false, foreign_key: true
      t.string :msg
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
