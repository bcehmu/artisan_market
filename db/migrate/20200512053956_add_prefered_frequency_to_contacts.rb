class AddPreferedFrequencyToContacts < ActiveRecord::Migration[6.0]
  def change
    add_column :contacts, :prefered_frequency, :integer
  end
end
