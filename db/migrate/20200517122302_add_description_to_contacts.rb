class AddDescriptionToContacts < ActiveRecord::Migration[6.0]
  def change
    add_column :contacts, :description, :string
  end
end
