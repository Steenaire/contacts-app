class AddAddressColumnToContactsTable < ActiveRecord::Migration[5.0]
  def change
    add_column :contacts, :address, :string
  end
end
