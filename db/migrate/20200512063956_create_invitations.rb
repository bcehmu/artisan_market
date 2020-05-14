class CreateInvitations < ActiveRecord::Migration[6.0]
  def change
    create_table :invitations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :luthier, null: false, foreign_key: true
      t.references :musician, null: false, foreign_key: true

      t.timestamps
    end
  end
end
