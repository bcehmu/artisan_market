class AddStatusToPendingUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :pending_users, :status, :integer
  end
end
